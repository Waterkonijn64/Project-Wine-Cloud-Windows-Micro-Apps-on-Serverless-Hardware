#!/bin/bash
# Start de VNC server op display :1
vncserver :1 -geometry 1280x800 -depth 16

# Start de web-bridge (noVNC) op poort 7860
# noVNC verbindt met de VNC server op poort 5901 (display :1)
/usr/share/novnc/utils/launch.sh --vnc localhost:5901 --listen 7860

