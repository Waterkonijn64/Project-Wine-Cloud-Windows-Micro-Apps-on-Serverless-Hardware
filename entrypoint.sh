#!/bin/bash

# Zorg dat de VNC-lock bestanden weg zijn bij een herstart
rm -rf /tmp/.X11-unix /tmp/.X*-lock

# Start VNC server (display :1 is poort 5901)
vncserver :1 -geometry 1280x800 -depth 16

# Start noVNC bridge op poort 7860
# In Ubuntu 22.04 staat noVNC in deze map:
/usr/share/novnc/utils/launch.sh --vnc localhost:5901 --listen 7860
