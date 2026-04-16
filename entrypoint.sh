#!/bin/bash
# Start een virtuele display
Xvfb :1 -screen 0 1024x768x16 &
export DISPLAY=:1

# Start een lichte desktop omgeving
xfce4-session &

# Start de web-bridge (noVNC) op poort 7860 voor Hugging Face
/usr/share/novnc/utils/novnc_proxy --vnc localhost:5900 --listen 7860
