#!/bin/sh
# Author: Nuno Aguiar
# Start a socks5 proxied (or not) clean Chrome instance
# Usage: newChrome.sh somename localhost:1080

NAME=$1
if [ -z $NAME ]; then
    NAME=default
fi

TMPNAME="$TMPDIR/chrome_$NAME"

HOSTPORT=$2
PROXYARG=
if [ ! -z $HOSTPORT ]; then
    PROXYARG=--proxy-server="socks5://$HOSTPORT"
fi

if [ -d "$TMPNAME/Default" ]; then
    if [ ! -L "$TMPNAME/SingletonLock" ]; then
        echo Deleting previous temporary user data for $NAME...
        rm -rf $TMPNAME
    else
        echo Reusing user data for $NAME
    fi
fi

echo "Starting (hit Ctrl-C or close Chrome to end)..."
echo $TMPNAME
google-chrome --user-data-dir="$TMPNAME" $PROXYARG

if [ -d "$TMPNAME/Default" ]; then
    if [ ! -L "$TMPNAME/SingletonLock" ]; then
        echo Deleting temporary user data for $NAME...
        rm -rf $TMPNAME
    else
        echo User data for $NAME still in use
    fi
fi