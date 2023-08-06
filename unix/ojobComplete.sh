#!/bin/zsh
curl https://ojob.io/autoComplete.sh > /tmp/ojobio.bash
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source /tmp/ojobio.bash
rm /tmp/ojobio.bash