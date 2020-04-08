#!/bin/bash

LED=$(xset -q | grep LED | awk '{ print $10 }')

echo -n '['

case "$LED" in
  "00000002")
    echo -n "#[fg=cyan,bold]en"
    ;;
  "00000003")
    echo -n "#[fg=cyan,bold]EN"
    ;;
  "00001002")
    echo -n "#[fg=yellow,bold]ru"
    ;;
  "00001003")
    echo -n "#[fg=yellow,bold]RU"
    ;;
  "*")
    echo -n "--"
    ;;
esac

echo -n "#[default]] "

