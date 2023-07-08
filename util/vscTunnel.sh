#!/bin/sh

NAME=${NAME:-`hostname`}
ARCH=${ARCH:-`uname -m`}
SYST=${SYST:-`uname -s`}

case $ARCH in
  x86_64)
    if [ "$SYST" = "Darwin" ]
    then
      TARCH="mac64"
      URL="https://code.visualstudio.com/sha/download?build=stable&os=cli-darwin-x64"
    else 
      TARCH="unix64"
      URL="https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64"
    fi
    ;;
  aarch64_be | aarch64 | armv8b | armv8l | arm64)
    if [ "$SYST" = "Darwin" ]
    then 
      TARCH="macarm"
      URL="https://code.visualstudio.com/sha/download?build=stable&os=cli-darwin-arm64"
    else
      TARCH="arm64"
      URL="https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-arm64"
    fi
    ;; 
  arm | armv7l)
    TARCH="arm32"
    URL="https://code.visualstudio.com/sha/download?build=stable&os=cli-linux-armhf"
    ;;
  *)
    echo -n "Architecture $ARCH on $SYST not recognized."
esac

if [ -x "$(command -v wget)" ]; then
   CMD="wget -O";
else
   if [ -x "$(command -v curl)" ]; then
      CMD="curl -L -o";
   else
      echo "Need curl installed to proceed!"
      exit 1
   fi
fi


if [ -z $DIST ]
then
  $CMD /tmp/vscode-cli.tgz $URL
else 
  $CMD /tmp/vscode-cli.tgz $URL
fi

CDIR=`pwd`
cd /tmp
tar xzf vscode-cli.tgz
rm vscode-cli.tgz
mv code vscode-cli
echo "#!/bin/sh" > /tmp/start-vscode-tunnel.sh
echo "/tmp/vscode-cli tunnel --name $NAME" >> /tmp/start-vscode-tunnel.sh
echo "=="
echo "== Starting vscode tunnel $NAME..."
echo "=="
echo "----> nohup /tmp/vscode-cli tunnel --name $NAME 2>&1 > /tmp/vscode-tunnel.out & <----"
echo "=="
echo "=="
cd $CDIR
/tmp/vscode-cli tunnel --accept-server-license-terms --name $NAME 