#!/bin/zsh
ojob ojob.io/unix/ojobComplete > /tmp/ojobio.bash
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
source /tmp/ojobio.bash
rm /tmp/ojobio.bash