#!/bin/bash
# Author: Nuno Aguiar
# Start a socks5 proxied (or not) clean Chrome instance
# Usage: newChrome.sh somename localhost:1080
#
# If "somename" is a folder (e.g. /some/folder) it won't be deleted in the end (this can be reversed setting "NODELETE=yes")

NODELETE=${NODELETE:-}

NAME=$1
if [ -z $NAME ]; then
    NAME=default
fi

if [ ! -z $NODELETE ]; then
    _NODELETE=$NODELETE
fi

if [ ${NAME::1} == "/" ]; then
    TMPNAME=$NAME;
    if [ -z $_NODELETE ]; then
       _NODELETE=yes
    fi
else 
    if [ -z $TMPDIR ]; then
       TMPDIR=$HOME
    fi
    TMPNAME="$TMPDIR/_chrome_$NAME"
    if [ -z $_NODELETE ]; then
       _NODELETE=no
    fi
fi

HOSTPORT=$2
PROXYARG=
if [ ! -z $HOSTPORT ]; then
    PROXYARG=--proxy-server="socks5://$HOSTPORT"
fi

if [ -d "$TMPNAME/Default" ]; then
    if [ ! -L "$TMPNAME/SingletonLock" ] && [ ! "$_NODELETE" == "yes" ]; then
        echo Deleting previous temporary user data for $NAME...
        rm -rf "$TMPNAME"
    else
        echo Reusing user data for $NAME
    fi
fi

echo "Starting (hit Ctrl-C or close Chrome to end)..."
echo $TMPNAME
if [ -x "$(command -v google-chrome)" ]; then
    google-chrome --user-data-dir="$TMPNAME" $PROXYARG 
else
    chromium-browser --user-data-dir="$TMPNAME" $PROXYARG 
fi

if [ -d "$TMPNAME/Default" ]; then
    if [ ! -L "$TMPNAME/SingletonLock" ] && [ ! "$_NODELETE" == "yes" ]; then
        echo Deleting temporary user data for $NAME...
        rm -rf "$TMPNAME"
    else
        echo User data for $NAME still in use
    fi
fi