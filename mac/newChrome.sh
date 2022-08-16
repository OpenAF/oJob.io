#!/bin/zsh
# Author: Nuno Aguiar
# Start a socks5 proxied (or not) clean Chrome instance
# Usage: newChrome.sh localhost:1080

TMP=$TMPDIR/chrome

HOSTPORT=$1
PROXYARG=
if [ ! -z $HOSTPORT ]; then
    PROXYARG=--proxy-server="socks5://$HOSTPORT"
fi

if [ -d $TMP ]; then
    echo Deleting previous temporary user data...
    rm -rf $TMP
fi

echo "Starting (hit Ctrl-C or close Chrome to end)..."
mkdir $TMP
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --user-data-dir="$TMP" $PROXYARG