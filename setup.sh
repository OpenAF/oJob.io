#!/bin/bash
# Setups a local 'oaf' folder to run the ojob command.
# Author: Nuno Aguiar

ARCH=${ARCH:-`uname -m`}
SYST=${SYST:-`uname -s`}
DIST=${DIST:-}

parseURL() {
    # Parse protocol
    proto=$(echo $url | grep :// | sed -e's,^\(.*://\).*,\1,g')
    url=$(echo $url | sed -e"s,$proto,,g")

    # Parse user / host / port
    user="$(echo $url | grep @ | cut -d@ -f1)"
    hostport=$(echo $url | sed -e"s,$user@,,g" | cut -d/ -f1)
    host="$(echo $hostport | sed -e 's,:.*,,g')"
    port="$(echo $hostport | sed -e 's,^.*:,:,g' -e 's,.*:\([0-9]*\).*,\1,g')"

    # Transform the protocol into lowercase
    proto=$(echo $proto | tr '[:upper:]' '[:lower:]')

    # Determine the port
    if [ "$host" = "$port" ]; then
        if [ "$proto" = "http://" ]; then
            port=80
        fi
        if [ "$proto" = "https://" ]; then
            port=443
            echo "WARNING: https is not supported through this download method. Try using http if possible."
        fi
    fi

    uri="$(echo $url | grep / | cut -d/ -f2-)"
    file="$(echo $uri | sed -e 's/.*\///')"

    if [ "$file" = "" ]; then
        file=output.bin
    fi

    #echo "(parsedInput: (protocol: '$proto', host: '$host', port: '$port', uri: '$uri', file: '$file'))"
}

downloadURL() {
    parseURL

    echo "Downloading from '$proto$url' to '$output'..."
    /bin/bash -c "exec 3<>/dev/tcp/$host/$port && echo -e \"GET /$uri HTTP/1.1\nHost: $host\nUser-Agent: curl\nConnection: close\n\n\" >&3 && cat <&3" > $output
    sed -i '1,/connection: close/d' $output
    tail -n +2 $output > $output.temp
    mv $output.temp $output
}

# Determine architecture
case $ARCH in
  x86_64)
    if [ "$SYST" = "Darwin" ]
    then
      TARCH="M64"
      IPATH=${IPATH:-/Applications/OpenAF}
    else 
      TARCH="64"
    fi
    ;;
  aarch64_be | aarch64 | armv8b | armv8l | arm64)
    if [ "$SYST" = "Darwin" ]
    then 
      TARCH="MA"
      IPATH=${IPATH:-/Applications/OpenAF}
    else
      TARCH="A64"
    fi
    ;; 
  arm | armv7l)
    TARCH="A32"
    ;;
  *)
    echo -n "Architecture $ARCH on $SYST not recognized."
esac

IPATH=${IPATH:-oaf}

# Downloads
# ---------
echo -----------------------
echo Creating sub-folder oaf
mkdir oaf
cd oaf

echo -------------------
echo Downloading java...
url=http://openaf.io/java/java17_$TARCH.tgz
output=jre.tgz
downloadURL

echo ---------------------
echo Downloading openaf...
url=http://openaf.io/$DIST/openaf.jar
output=openaf.jar.orig
downloadURL
url=http://openaf.io/$DIST/openaf.jar.repacked
output=openaf.jar
downloadURL
url=http://ojob.io/autoComplete.sh
output=autoComplete.sh
downloadURL

echo ------------
echo Unpacking...
tar xzf jre.tgz
mv *jdk* jre
`find . | egrep /bin/java$` -jar openaf.jar --install
rm jre.tgz

cdir=$(pwd)
echo Done.
echo
echo To run just execute: 
echo
echo "   --->  $cdir/ojob ojob.io  <---"
echo 
echo "To auto-complete 'ojob ojob.io' in bash just execute:"
echo 
echo "  export PATH=$cdir:\$PATH && . $cdir/autoComplete.sh"
echo 
echo --------------------------------------
