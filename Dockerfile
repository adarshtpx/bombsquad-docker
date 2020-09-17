#
# Jugal Kishore -- 2020
#
# BombSquad Server
#
# Base Image: Ubuntu Focal
FROM ubuntu:focal

# Setting Non-Interactive Environment Variable
ARG DEBIAN_FRONTEND="noninteractive"

# BombSquad Version to download
ARG BOMBSQUAD_VERSION="1.5.26"

# Update Packages list
RUN apt-get update

# Install Packages
RUN apt-get install -y curl python3 libpython3.8

# Set Working Directory
WORKDIR /app

# Download BombSquad Server
RUN curl -o bombsquad.tar.gz https://files.ballistica.net/bombsquad/builds/BombSquad_Server_Linux_${BOMBSQUAD_VERSION}.tar.gz && \
    tar -xvf bombsquad.tar.gz && \
    mv BombSquad_Server*/ bombsquad-server && \
    rm -f bombsquad.tar.gz

# Clean up
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/*

WORKDIR /app/bombsquad-server

EXPOSE 43210/udp

CMD ["/app/bombsquad-server/bombsquad_server"]
