#!/bin/bash

WEB_PORT=${_WEB_PORT:-8888}
SSH_PORT=${_SSH_PORT:-22222}
SOCKS_PORT=${_SOCKS_PORT:-1080}
NAME=${_NAME:-hvscs}
WORKSPACE=${_WORKSPACE:-`pwd`}
IMAGE=${_IMAGE:-nmaguiar/hvscs}
SSH_PASS=${_SSH_PASS:-Password1}

# -----------------

NOSSH=${_NOSSH:-}
NODOCKER=${_NODOCKER:-}
NOK8S=${_NOK8S:-}
NOVSCODE=${_NOVSCODE:-}
NOPULL=${_NOPUL:-}

ORIG=$1
echo "hVSCs (https://github.com/nmaguiar/hvscs)"
echo =========================================

_printHelp() {
  echo
  echo Please use "hvscs start" or "hvscs stop"
  echo
  exit
}

_start() {
  MAC=false
  if [ ! "`uname -s`" != "Darwin" ]; then
    MAC=true
  fi

  echo -- Creating hVSCs network...
  docker network create $NAME

  echo "-- Starting hVSCs server (ssh port $SSH_PORT)..."
  CMD=""
  if [ "$MAC" != "false" ]; then
    #CMD="--cgroupns=host -v /sys/fs/cgroup:/sys/fs/cgroup:rw"
    CMD="--cgroupns=host"
  fi
  if [ -z $WORKSPACE ]; then
    WKS=""
  else
    WKS="-v $WORKSPACE:/workspace:cached"
  fi
  EXTRA=""
  EXTRA=$EXTRA${NOSSH:+" --env NOSSH=1 "}
  EXTRA=$EXTRA${NODOCKER:+" --env NODOCKER=1 "}
  EXTRA=$EXTRA${NOK8S:+" --env NOK8S=1 "}
  EXTRA=$EXTRA${NOVSCODE:+" --env NOVSCODE=1 "}

  if [ ! -z $NOPULL ]; then
    docker pull $IMAGE
  fi
  docker run --rm -ti --env SSH_PASS=$SSH_PASS $EXTRA --init -d -p 3000 -p $SSH_PORT:22 --privileged $CMD $WKS --network $NAME --name $NAME\_hvscs $IMAGE

  echo "-- Starting nginx reverse proxy (port $WEB_PORT)..."
  CMD='$sh("sudo apk update && sudo apk add nginx && ojob ojob.io/docker/nginx url=http://'
  CMD=$CMD$NAME\_hvscs
  CMD=$CMD':3000 port='
  CMD=$CMD$WEB_PORT
  CMD=$CMD' websocket=true  ssl=hvscs sslvalid=525600 && sudo mv nginx.conf /etc/nginx/nginx.conf  && sudo mv nginx.pem /etc/nginx.pem && sudo mv nginx.key /etc/nginx.key && echo --- && sudo nginx && tail -f /var/log/nginx/access.log").exec()'

  if [ ! -z $NOPULL ]; then
    docker pull openaf/oaf:nightly
  fi
  docker run --rm -ti -d -p $WEB_PORT:80 --network $NAME --name $NAME\_nginx openaf/oaf:nightly -c "$CMD"

  if [ -z $NOVSCODE ]; then
    echo
    echo -- Waiting for startup...
    curl --version 2>&1 > /dev/null
    if [ $? != 0 ]; then
      echo -- 'curl' not installed. Please open the browser with the provided address and refresh until a web page shows up indicating the server is up.
      echo
    else
      until curl -s -f -k -o /dev/null https://127.0.0.1:$WEB_PORT
      do
        sleep 3
      done
      echo =============================================================
      echo READY!
    fi

    echo =============================================================
    echo Open your browser at:
    echo "  [ https://`hostname`:$WEB_PORT/?folder=/workspace ]"
    echo or
    echo "  [ https://127.0.0.1:$WEB_PORT/?folder=/workspace ]"
    echo =============================================================
  fi

  if [ -z $NOSSH ]; then
    cat  ~/.ssh/known_hosts | egrep -v "\[127.0.0.1\]:$SSH_PORT " > ~/.ssh/known_hosts
    if [ "$ORIG" != "start" ] && [ "$_OP" != "start"  ]; then
      echo -------------------------------------------------------------------------------
      echo "Now we will SSH to the local hVSCs (use '$SSH_PASS' as your password)."
      echo "Executing: [ ssh -N -p $SSH_PORT openvscode-server@127.0.0.1 -L$SOCKS_PORT:127.0.0.1:1080 ]"
      echo When finished simply hit Ctrl-C and hVSCs will be stopped.
      echo -------------------------------------------------------------------------------
      ssh -N -p $SSH_PORT openvscode-server@127.0.0.1 -L$SOCKS_PORT:127.0.0.1:1080
      _stop
    else
      echo "You can SSH in by executing:"
      echo "   [ ssh -p $SSH_PORT openvscode-server@127.0.0.1 -L$SOCKS_PORT:127.0.0.1:1080 ]"
      echo "   (use '$SSH_PASS' as your password)."
      echo
      echo "To stop execute this script like this: ./hvscs.sh stop"
      echo -------------------------------------------------------------------------------
      #ssh -tt -p $SSH_PORT openvscode-server@127.0.0.1 -L$SOCKS_PORT:127.0.0.1:1080
    fi
  fi
}

_stop() {
  echo -- Stopping nginx...
  docker stop $NAME\_nginx
  docker rm $NAME\_nginx 2> /dev/null

  echo -- Stopping hVSCs...
  docker stop $NAME\_hvscs
  docker rm $NAME\_hvscs 2> /dev/null

  echo -- Deleting network...
  docker network rm $NAME

  echo Done.
}

if [ -z $1 ]; then
  START=${_OP:-start}
else
  START=$1
fi

case $START in
  start)
    _start
    ;;

  stop)
    _stop
    ;;

  *)
    _printHelp
    ;;
esac