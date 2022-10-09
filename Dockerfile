# Author: Chuck Findlay <chuck@findlayis.me>
# License: LGPL v3.0

FROM debian:buster-slim

RUN \
    apt update && \
    apt install -y screen

ADD http://media.steampowered.com/client/steamcmd_linux.tar.gz /steam/steamcmd_linux.tar.gz

RUN \
    cd /steam && \
    tar -xvzf steamcmd_linux.tar.gz && \
    rm /steam/steamcmd_linux.tar.gz
