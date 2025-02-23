#!/bin/bash
# Author: Nuno Aguiar

ARCH=${ARCH:-`uname -m`}
SYST=${SYST:-`uname -s`}

# Function to parse the URL
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

# Function to download the URL
downloadURL() {
    parseURL

    echo "Downloading from '$proto$url' to '$output'..."
    /bin/bash -c "exec 3<>/dev/tcp/$host/$port && echo -e \"GET /$uri HTTP/1.1\nHost: $host\nUser-Agent: curl\nConnection: close\n\n\" >&3 && cat <&3" > $output
    sed -i '1,/connection: close/d' $output
    tail -n +2 $output > $output.temp
    mv $output.temp $output
}

DIST=$(oaf -c 'af.p(getDistribution().trim())')
echo ----------------------------
echo Downloading latest openaf...
url=http://openaf.io/$DIST/openaf.jar
output=openaf.jar.orig
downloadURL
url=http://openaf.io/$DIST/openaf.jar.repacked
output=openaf.jar
downloadURL

echo --------------------------
echo Download latest Java 21...
java_file=""
case "$ARCH" in
    x86_64)
        if [ "$SYST" = "Darwin" ]; then
            java_file="java21_M64.tgz"
        else
            java_file="java21_64.tgz"
        fi
    ;;
    aarch64_be|aarch64|armv8b|armv8l|arm64)
        if [ "$SYST" = "Darwin" ]; then
            java_file="java21_MA.tgz"
        else
            java_file="java21_A64.tgz"
        fi
    ;;
    arm|armv7l)
        java_file="java21_A32.tgz"
    ;;
    *)
        echo "Unsupported ARCH: $ARCH"
        exit 1
    ;;
esac

url="http://openaf.io/java/$java_file"
output="$java_file"
downloadURL

echo --------------------------
echo Installing Java 21...
tar xzf java21*
mv jre jre.old
mv jdk* jre
rm -f java21* 2>/dev/null
jre/bin/java -jar openaf.jar --install && rm -rf jre.old 2>/dev/null