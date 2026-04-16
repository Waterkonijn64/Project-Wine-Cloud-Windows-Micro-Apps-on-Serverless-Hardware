# Gebruik een lichte Ubuntu-basis
FROM ubuntu:22.04

# Voorkom interactieve vragen tijdens installatie
ENV DEBIAN_FRONTEND=noninteractive

# Installeer Wine en benodigdheden voor een browser-interface (noVNC)
RUN apt-get update && apt-get install -y \
    wine \
    xfce4 \
    xfce4-goodies \
    novnc \
    python3-websockify \
    python3-pip \
    xvfb \
    wget \
    && apt-get clean

# Maak een werkmap aan
WORKDIR /app

# Exposeer de poort voor de web-interface (Hugging Face gebruikt standaard 7860)
EXPOSE 7860

# Startscript dat de virtuele desktop en noVNC opstart
CMD ["/usr/bin/bash", "-c", "Xvfb :1 -screen 0 1024x768x24 & export DISPLAY=:1 && xfce4-session & websockify --web=/usr/share/novnc/ 7860 localhost:5901"]
