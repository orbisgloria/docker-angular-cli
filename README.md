# Dockerfile with Angular CLI


Node 14.15.0, and Angular CLI 10.2.0
Based on the node buster. 

Find the [image here](https://hub.docker.com/r/orbisgloria/angular-cli/)

Pulling the image

```bash
docker pull orbisgloria/angular-cli
```

Using the image in a `Dockerfile`

```bash
FROM orbisgloria/angular-cli
```

## Create new Angular project

Change to the directory where the new project will be located.

```bash
$ cd /path/to/project/
$ docker run --rm -v ${PWD}:/app orbisgloria/angular-cli \
    ng new app --directory ./ --style scss --skip-git
```

## Install dependencies

Install project dependencies.

```bash
$ docker run --rm -v ${PWD}:/app orbisgloria/angular-cli npm install
```

## Run of the project

Run with docker-compose.

```yaml
version: "3"

services:
  app:
    image: orbisgloria/angular-cli
    ports:
      - "8080:4200"
    volumes:
      - ".:/app"
    command: ng serve --host 0.0.0.0
```

**P.s.** make sure to set host as 0.0.0.0.

