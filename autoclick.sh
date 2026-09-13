#!/bin/bash

F=/tmp/autoclick
P=/tmp/autoclick.pid

if [ -f $F ]; then
  kill $(cat $P) 2>/dev/null
  rm -f $F $P
else
  touch $F
  (echo $$>$P; while [ -f $F ]; do xdotool click --repeat 1 --delay 1 1; done) &
fi
