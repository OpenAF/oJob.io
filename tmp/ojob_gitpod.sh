#!/usr/bin/env sh
nohup /home/openvscode-server/.server0.sh > /tmp/server0.log 2>&1 &
cd /home/workspace
exec ${OPENVSCODE_SERVER_ROOT}/bin/openvscode-server --host 0.0.0.0 --without-connection-token -- $*
