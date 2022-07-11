#!/usr/bin/env sh
nohup sudo dockerd > ~/.dockerd.log 2>&1 &
/home/.openvscode-server/bin/remote-cli/openvscode-server --install-extension GitHub.github-vscode-theme 