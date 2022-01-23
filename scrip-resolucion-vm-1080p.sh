#!/bin/bash
monitor=$(xrandr | head -n 2 | tail -n 1 | cut -d " " -f 1)
modeline=$(cvt 1920 1080 60 | tail -n 1 | cut -d " " -f 2-16)
xrandr --newmode $modeline
xrandr --addmode $monitor 1920x1080_60.00
xrandr --output $monitor --mode 1920x1080_60.00