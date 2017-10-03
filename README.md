# Docker digdag
[![GitHub release](https://img.shields.io/github/release/szyn/docker-digdag.svg?style=flat-square)](https://github.com/szyn/docker-digdag/releases/latest)
[![Docker Build Status](https://img.shields.io/docker/build/szyn/docker-digdag.svg?style=flat-square)](https://hub.docker.com/r/szyn/docker-digdag/builds)
[![Docker Pulls](https://img.shields.io/docker/pulls/szyn/docker-digdag.svg?style=flat-square)](https://hub.docker.com/r/szyn/docker-digdag)

### Overview
Docker image for (Dockernize) digdag.  
[digdag](http://www.digdag.io/) is a workflow engine.  
If you want to know about digdag more, please read the [Official Document](https://docs.digdag.io/).

#### Feature
* Easy to use :)
* Can use `py>` `rb>` Operators

### Requirements
* Docker for Mac / Windows

### Usage

### Getting started

```
$ mkdir /path/to/your/project
$ cd /path/to/your/project

### Create a new workflow project
$ docker run -it --rm -v `pwd`:/src docker-digdag:latest init -t ruby hello

$ cd hello
$ docker run -it --rm -v `pwd`:/src docker-digdag:latest run -a hello.dig
```

#### Runs workflow

```console
$ docker run -it --rm -v `pwd`:/src \
  szyn/docker-digdag:latest run <workflow.dig> [+task] [options...]

e.g.
$ docker run -it --rm -v `pwd`:/src \
  szyn/docker-digdag:latest run -a workflow.dig
```

#### Runs server mode

If you want to try server mode, you can do this :)

```console
$ docker run -it -p 65432:65432 --rm -v `pwd`:/src --name docker-digdag \
  szyn/docker-digdag:latest server -m -b 0.0.0.0

### If you want to operate server
$ docker exec -it docker-digdag bash
```

You can also access to the Web Interface!  
Please open following address.  
http://localhost:65432
