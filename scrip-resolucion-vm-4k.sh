#!/bin/bash
monitor=$(xrandr | head -n 2 | tail -n 1 | cut -d " " -f 1)
modeline=$(cvt 3840 2160 60 | tail -n 1 | cut -d " " -f 2-16)
xrandr --newmode $modeline
xrandr --addmode $monitor 3840x2160_60.00
xrandr --output $monitor --mode 3840x2160_60.00