FROM ubuntu:22.04

# Voorkom interactie tijdens installatie
ENV DEBIAN_FRONTEND=noninteractive

# Installeer Wine, Desktop en noVNC
RUN apt-get update && apt-get install -y \
    wine \
    xfce4 \
    xfce4-terminal \
    tightvncserver \
    novnc \
    python3-websockify \
    wget \
    curl \
    && apt-get clean

# Setup VNC-server configuratie (Nu met RUN commando's)
RUN mkdir -p /root/.vnc
RUN echo "password" | vncpasswd -f > /root/.vnc/passwd
RUN chmod 600 /root/.vnc/passwd

# Kopieer het startscript
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Werkmap instellen
WORKDIR /root

# Poort voor Hugging Face
EXPOSE 7860

# Start alles op via het script
CMD ["/entrypoint.sh"]

