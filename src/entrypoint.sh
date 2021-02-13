#! /bin/sh

Xvfb :99 -ac -listen tcp -screen 0 2560x1440x24 &
sleep 3
/usr/bin/fluxbox -display :99 -screen 0 &
sleep 3
x11vnc -display :99.0 -forever -passwd ${X11VNC_PASSWORD:-password}
