#!/bin/bash

WEB_PORT=${_WEB_PORT:-8443}
SSH_PORT=${_SSH_PORT:-22222}
SOCKS_PORT=${_SOCKS_PORT:-10080}
NAME=${_NAME:-hvscs}
WORKSPACE=${_WORKSPACE:-`pwd`}
IMAGE=${_IMAGE:-nmaguiar/hvscs}
SSH_PASS=${_SSH_PASS:-Password1}
HOST=${_HOST:-127.0.0.1}

# -----------------

NOSSH=${_NOSSH:-}
NODOCKER=${_NODOCKER:-}
NOK8S=${_NOK8S:-}
NOVSCODE=${_NOVSCODE:-}
NOPULL=${_NOPULL:-}

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

  echo "-- Starting hVSCs server..."
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
  docker run --rm -ti --env SSH_PASS=$SSH_PASS $EXTRA --init -d -p 3000 -p $WEB_PORT:8443 -p $SOCKS_PORT:1080 -p $SSH_PORT:22 --privileged $CMD $WKS --network $NAME --name $NAME\_hvscs $IMAGE

  if [ -z $NOVSCODE ]; then
    echo
    echo -- Waiting for startup...
    curl --version 2>&1 > /dev/null
    if [ $? != 0 ]; then
      echo -- 'curl' not installed. Please open the browser with the provided address and refresh until a web page shows up indicating the server is up.
      echo
    else
      until curl -s -f -k -o /dev/null https://$HOST:$WEB_PORT
      do
        sleep 3
      done
      echo =============================================================
      echo READY!
    fi

    echo =============================================================
    echo Open your browser at:
    echo
    echo " --> [ https://$HOST:$WEB_PORT/?folder=/workspace ] <--"
    echo
    echo =============================================================
    echo
    echo "To stop run 'hvscs2 stop'"
    echo
  fi
}

_stop() {
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