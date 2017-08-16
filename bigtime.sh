#!/bin/sh
xrandr --newmode howcanbeover9k  171.19  1680 1792 1976 2272  1050 1051 1054 1092  -HSync +Vsync +preferred
xrandr --addmode DisplayPort-0 howcanbeover9k
xrandr --output DisplayPort-0 --mode howcanbeover9k --pos 5100x0 --left-of DVI-D-1
x11vnc -usepw -ncache 9 -wireframe -ncache_cr -noxdamage -noxdamage -clip 1680x1050+5100+1440 -nocursorshape -nocursorpos &
xrandr --output DVI-D-1 --auto --scale 0.836x0.836 --rate 75
xrandr --output DVI-D-0 --auto --rotate right --scale 0.767x0.767 --pos 0x0 --right-of HDMI-A-0 --rate 75

