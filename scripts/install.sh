#!/bin/bash

say() {
  echo " » [INFO ]" "$@"
}

say_already_installed() {
  say "Already installed"
}

create_tmux_conf() {
  touch "$HOME/.tmux.conf"
}

add_config_link() {
  COUNT=$(cat "$HOME/.tmux.conf" | grep "TMUX_CFG=" | wc -l)
  [[ "$COUNT" == "0" ]] && (print_config_link >> "$HOME/.tmux.conf") || say_already_installed
}

print_config_link() {
  echo "### Tmux configuration link ###"
  echo "TMUX_CFG=$CFGDIR"
  echo "source \$TMUX_CFG/config.conf"
}

# Get configuration directory name
#
BIN0=$(readlink -f $0)
DIR=$(dirname $BIN0)
CFGDIR=$(dirname $DIR)

if [ -f "$HOME/.tmux.conf" ]; then
  add_config_link
else
  create_tmux_conf
  add_config_link
fi
