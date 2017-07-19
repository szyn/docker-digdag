# Docker digdag
[![Docker Build Status](https://img.shields.io/docker/build/szyn/docker-digdag.svg?style=flat-square)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/szyn/docker-digdag.svg?style=flat-square)]()

### Overview
Docker image for (Dockernize) digdag.  
[digdag](http://www.digdag.io/) is a workflow engine.  
If you want to know about digdag more, please read the [Official Document](https://docs.digdag.io/).

#### Feature
* Easy to use :)

### Requirements
* Docker for Mac / Windows

### Usage
You have to install `dogdag` command.

```bash
$ curl https://raw.githubusercontent.com/szyn/docker-digdag/master/provision/install | sh
You can now use `docdag` command.
Run `docdag help` to get started!
```

**[Note]**  
`docdag` command is shell script wrapper for `docker run` command.  
You can easy to use szyn/docker-digdag image.  
But if you don't want to install `dogdag` commnad, you can use following command instead of that.
```bash
$ docker run -it -p 65432:65432 --name docker-digdag \
--rm -v `pwd`:/src szyn/docker-digdag:latest \
java -jar /usr/local/bin/digdag <help>
```

#### Create a New Project

```bash
$ mkdir /path/to/your/project
$ cd /path/to/your/project
$ docdag init <dir>
```

#### Runs Workflow

```bash
$ docdag run <workflow.dig> [+task] [options...]
```

#### Server Mode
If you want to try server mode, you can do this :)

```bash
$ docdag server --memory -b 0.0.0.0
```

Now, you can access to Web UI !  
Please open following address.  
http://localhost:65432
