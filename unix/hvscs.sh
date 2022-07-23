#!/bin/sh

PORT=8888
NAME=hvscs
WORKSPACE=`pwd`

# -----------------

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

  echo Creating hVSCs network...
  docker network create $NAME

  echo "Starting hVSCs server (ssh port 2222)..."
  CMD=""
  if [ "$MAC" != "false" ]; then
    #CMD="--cgroupns=host -v /sys/fs/cgroup:/sys/fs/cgroup:rw"
    CMD="--cgroupns=host"
  fi
  docker run --rm -ti --init -d -p 3000 -p 2222:22 --privileged $CMD -v $WORKSPACE:/workspace:cached --network $NAME --name $NAME\_hvscs nmaguiar/hvscs

  echo "Starting nginx reverse proxy (port $PORT)..."
  CMD='$sh("sudo apk update && sudo apk add nginx && ojob ojob.io/docker/nginx url=http://'
  CMD=$CMD$NAME\_$NAME
  CMD=$CMD':3000 port='
  CMD=$CMD$PORT
  CMD=$CMD' websocket=true  ssl=hvscs sslvalid=525600 && sudo mv nginx.conf /etc/nginx/nginx.conf  && sudo mv nginx.pem /etc/nginx.pem && sudo mv nginx.key /etc/nginx.key && echo --- && sudo nginx && tail -f /var/log/nginx/access.log").exec()'
  docker run --rm -ti -d -p $PORT:80 --network $NAME --name $NAME\_nginx openaf/oaf:nightly -c "$CMD"

  echo
  echo Waiting for startup...
  until curl -s -f -k -o /dev/null https://`hostname`:$PORT
  do
    sleep 3
  done

  echo -------------------------------------------------------------------------------
  echo Ready! You can open your browser at https://`hostname`:$PORT/?folder=/workspace
  echo -------------------------------------------------------------------------------
  echo "Now we will SSH to the local hVSCs (use 'Password1' as your password)."
  echo When finished simply exit and hVSCs will be stopped.
  echo -------------------------------------------------------------------------------

  ssh -p 2222 -q openvscode-server@127.0.0.1 -L1080:127.0.0.1:1080
  _stop
}

_stop() {
  echo Stopping nginx...
  docker stop $NAME\_nginx
  docker rm $NAME\_nginx 2> /dev/null

  echo Stopping hVSCs...
  docker stop $NAME\_hvscs
  docker rm $NAME\_hvscs 2> /dev/null

  echo Deleting network...
  docker network rm $NAME

  echo Done.
}

if [ -z $1 ]; then
  START=start
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