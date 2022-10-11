# Author: Chuck Findlay <chuck@findlayis.me>
# License: LGPL v3.0

FROM debian:buster-slim

ARG STEAM_USER=test
ARG STEAM_PASSWORD=test

RUN \
    apt update && \
    apt install -y screen lib32gcc1 ca-certificates

ADD http://media.steampowered.com/client/steamcmd_linux.tar.gz /steam/steamcmd_linux.tar.gz

# Install is done in this block - requires authenticated steam (tried anonymous - didn't work)
RUN \
    cd /steam && \
    tar -xvzf steamcmd_linux.tar.gz && \
    rm /steam/steamcmd_linux.tar.gz && \
    ./steamcmd.sh +force_install_dir /starbound +login ${STEAM_USER} ${STEAM_PASSWORD} +app_update 211820
