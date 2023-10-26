#!/bin/bash
# Setups a static file to run the ojob command.
# Author: Nuno Aguiar

ARCH=${ARCH:-`uname -m`}
SYST=${SYST:-`uname -s`}
MUSL=${MUSL:-`cat /etc/*-release | grep -q "Alpine" && echo 'alpine'`}
DIST=${DIST:-}
BASH=${BASH:-/bin/bash}

if [ ! -e $BASH ]
then
  echo bash is needed to run this script
  exit 1
fi

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
    $BASH -c "exec 3<>/dev/tcp/$host/$port && echo -e \"GET /$uri HTTP/1.1\nHost: $host\nUser-Agent: curl\nConnection: close\n\n\" >&3 && cat <&3" > $output
    sed -i '1,/connection: close/d' $output
    tail -n +2 $output > $output.temp
    mv $output.temp $output
}

help() {
  echo Done.
  echo
  echo To run just execute: 
  echo
  echo "   --->  ./ojob ojob.io  <---"
  echo 
  echo "To auto-complete 'ojob ojob.io' in bash just execute:"
  echo 
  echo "   export PATH=$(pwd):\$PATH && . $(pwd)/ojobAutoComplete.sh"
  echo 
  echo --------------------------------------
}

# Determine architecture
case $ARCH in
  x86_64)
    if [ "$SYST" = "Darwin" ]
    then
      TARCH="mac-x86_64"
    else 
      if [ "$MUSL" = "alpine" ]
      then
	TARCH="alpine-x86_64"
      else
	TARCH="linux-x86_64"
      fi
    fi
    ;;
  aarch64_be | aarch64 | armv8b | armv8l | arm64)
    if [ "$SYST" = "Darwin" ]
    then 
      TARCH="mac-aarch64"
    else
      if [ "$MUSL" = "alpine" ]
      then
	TARCH="alpine-aarch64"
      else
        TARCH="linux-aarch64"
      fi
    fi
    ;; 
  *)
    echo -n "Architecture $ARCH on $SYST not recognized."
esac

# Downloads
# ---------

echo ---------------------
echo Downloading openaf...
url=http://openaf.io/$DIST/oaf-$TARCH
output=oaf-$TARCH
downloadURL
url=http://ojob.io/autoComplete.sh
output=ojobAutoComplete.sh
downloadURL
chmod u+x oaf-$TARCH
./oaf-$TARCH

if [ $? -ne 0 ]; then
  echo "ERROR: oaf-$TARCH failed to run."
  exit 1
fi
help
