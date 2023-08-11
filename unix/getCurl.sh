#!/bin/bash
# Author: Nuno Aguiar

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
    echo "Downloading from '$url' to '$output'..."
    /bin/bash -c "exec 3<>/dev/tcp/$host/$port && echo -e \"GET /$uri HTTP/1.1\nHost: $host\nUser-Agent: curl\nConnection: close\n\n\" >&3 && cat <&3" > $output
    sed -i '1,/connection: close/d' $output
    tail -n +2 $output > $output.temp
    mv $output.temp $output
    echo "Done."
}

ARCH=${ARCH:-`uname -m`}
SYST=${SYST:-`uname -s`}

# Determine architecture
case $ARCH in
  x86_64)
    if [ "$SYST" = "Darwin" ]
    then
      echo -n "Mac OS already comes with curl"
      exit
    else 
      TARCH="amd64"
    fi
    ;;
  aarch64_be | aarch64 | armv8b | armv8l | arm64)
    if [ "$SYST" = "Darwin" ]
    then 
      echo -n "Mac OS already comes with curl"
      exit
    else
      TARCH="aarch64"
    fi
    ;; 
  arm | armv7l)
    TARCH="armv7"
    ;;
  armhf)
    TARCH="armhf"
    ;;
  i686)
    TARCH="i386"
    ;;
  *)
    echo -n "Architecture $ARCH on $SYST not recognized."
esac

url=http://openaf.io/curl/curl-$TARCH
output=curl
downloadURL

chmod u+x curl