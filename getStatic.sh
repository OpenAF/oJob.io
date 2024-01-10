#!/bin/bash
# Setups a static file to run the ojob command.
# Author: Nuno Aguiar

ARCH=${ARCH:-`uname -m`}
SYST=${SYST:-`uname -s`}
MUSL=${MUSL:-`cat /etc/*-release | grep -q "Alpine" && echo 'alpine'`}
DIST=${DIST:-}
PBSH=${PBSH:-/bin/bash}

if [ ! -e $PBSH ]
then
  echo bash is needed to run this script
  exit 1
fi

parseURL() {
    # Parse protocol
    proto=$(echo $_url | grep :// | sed -e's,^\(.*://\).*,\1,g')
    _url=$(echo $_url | sed -e"s,$proto,,g")

    # Parse user / host / port
    user="$(echo $_url | grep @ | cut -d@ -f1)"
    hostport=$(echo $_url | sed -e"s,$user@,,g" | cut -d/ -f1)
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

    uri="$(echo $_url | grep / | cut -d/ -f2-)"
    file="$(echo $uri | sed -e 's/.*\///')"

    if [ "$file" = "" ]; then
        file=output.bin
    fi

    #echo "(parsedInput: (protocol: '$proto', host: '$host', port: '$port', uri: '$uri', file: '$file'))"
}

downloadURL() {
    parseURL

    echo "Downloading from '$proto$_url' to '$_output'..."
    echo "host = $host | port = $port | uri = $uri | output = $_output | PBSH = $PBSH"
    $PBSH -c "exec 3<>/dev/tcp/$host/$port && echo -e \"GET /$uri HTTP/1.1\nHost: $host\nUser-Agent: curl\nConnection: close\n\n\" >&3 && cat <&3" > "$_output"
    if [ "$SYST" = "Darwin" ]
    then    
      sed -i '' '1,/connection: close/d' "$_output"
    else
      sed -i '1,/connection: close/d' "$_output"
    fi
    tail -n +2 $_output > $_output.temp
    mv $_output.temp $_output
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
_url=http://openaf.io/${DIST:+${DIST}/}oaf-$TARCH
_output=oaf-$TARCH
downloadURL
_url=http://ojob.io/autoComplete.sh
_output=ojobAutoComplete.sh
downloadURL
chmod u+x oaf-$TARCH
./oaf-$TARCH

if [ $? -ne 0 ]; then
  echo "ERROR: oaf-$TARCH failed to run."
  exit 1
fi
help
