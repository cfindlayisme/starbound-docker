# Author: Chuck Findlay <chuck@findlayis.me>
# License: LGPL v3.0

FROM gitea.findlayis.me/chuck/steamcmd:latest

ARG STEAM_USER=test
ARG STEAM_PASSWORD=test

# Install is done in this block - requires authenticated steam (tried anonymous - didn't work)
RUN \
    /steam/steamcmd.sh +force_install_dir /starbound +login ${STEAM_USER} ${STEAM_PASSWORD} +app_update 211820
