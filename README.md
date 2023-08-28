## Description

Build the image with Dockerfile and use docker to serve the static content to the application.

## Prerequisites

- Docker

## Commands:

### Build the image

```bash
$ docker build -t node-docker .
# -t -> sets the tag to the image with memorable name
# . -> tells the build context is current directory
```

### Run the container using the image

```bash
$ docker run --name node-docker -p 80:8080 -d node-docker
# --name -> sets the name of the container
# -p 80:8080 -> publishes the port 8080 of the container and maps to the host port 8080, so that the traffic on host port 8080 is routed to the container
# -d -> runs the container in detached mode. i.e in background
```

### List the containers

```bash
$ docker ps or docker container ls(new)
# it shows active containers only.
# use flag -a or --all to list all containers
```

### List the images

```bash
$ docker images
# use flag -a or --all to list all containers
```

### Remove containers and images

```bash
$ docker container rm or docker rm
$ docker image rm
# use -f to force remove running container
```

### Remove all stopped-containers/unused-networks/unassociated-images

```bash
$ docker system prune -a
```

### Push the image to registry(docker hub)

```bash
$ docker push imageName
```

### Pull the image from docker hub

```bash
$ docker pull imageName
```
