## Dockerized BombSquad Server

[![Docker Pulls](https://img.shields.io/docker/pulls/crazyuploader/bombsquad?style=flat-square)](https://hub.docker.com/r/crazyuploader/bombsquad)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/crazyuploader/bombsquad/latest?style=flat-square)](https://hub.docker.com/r/crazyuploader/bombsquad/tags)

### Huge thanks to [Alibo](https://github.com/alibo/bombsquad-docker)

Docker image for server of game [BombSquad Game](https://www.froemling.net/apps/bombsquad)

### Usage
```bash
docker run -d -it \
           -p 43210:43210/udp \
           --name bombsquad \
           crazyuploader/bombsquad
```

### DockerHub
https://hub.docker.com/r/crazyuploader/bombsquad

### Official Builds
https://files.ballistica.net/bombsquad/builds/
