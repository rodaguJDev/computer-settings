#! /usr/bin/bash

polybar-msg cmd quit


echo "---" | tee -a /tmp/example.log
polybar example 2>&1 | tee -a /tmp/example.log & disown
echo "Bars launched."
