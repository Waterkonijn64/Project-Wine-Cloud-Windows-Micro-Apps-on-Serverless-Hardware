FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
# Fix voor de 'USER environment variable' error
ENV USER=user

RUN apt-get update && apt-get install -y \
    wine xfce4 xfce4-terminal tightvncserver \
    novnc python3-websockify wget curl fluxbox \
    && apt-get clean

RUN useradd -m -u 1000 user
WORKDIR /home/user

# VNC setup
RUN mkdir -p /home/user/.vnc
RUN echo "password" | vncpasswd -f > /home/user/.vnc/passwd
RUN chmod 600 /home/user/.vnc/passwd
RUN chown -R user:user /home/user/

COPY --chown=user:user entrypoint.sh /home/user/entrypoint.sh
RUN chmod +x /home/user/entrypoint.sh

USER user
EXPOSE 7860

CMD ["/bin/bash", "/home/user/entrypoint.sh"]
