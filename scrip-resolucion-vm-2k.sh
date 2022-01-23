#!/bin/bash
monitor=$(xrandr | head -n 2 | tail -n 1 | cut -d " " -f 1)
modeline=$(cvt 2560 1440 60 | tail -n 1 | cut -d " " -f 2-16)
xrandr --newmode $modeline
xrandr --addmode $monitor 2560x1440_60.00
xrandr --output $monitor --mode 2560x1440_60.00