#!/bin/bash
if [ "$SSH_CLIENT" == "" ]; then
  if [ "1" == "$(ps aux | grep slack | grep zygote | wc -l)" ]; then
    echo '[#[bold,fg=green,bg=black]slack#[default]]';
  else
    echo '[#[bold,fg=red,bg=black]slack#[default]]';
  fi;
fi
