# NIS Docker

Customized Docker files provided by the core team.

- https://github.com/NemProject/nem-docker
- https://docs.nem.io/pages/Guides/supernode-program/docs.en.html


## Prerequisites

[Docker](https://docs.docker.com/get-docker/) installation is required.

## Installation

Clone [this repository](https://github.com/curupo/nis-docker):

```bash
$ git clone https://github.com/curupo/nis-docker.git
$ cd nis-docker
```

## How to run

The required values must be set:

```text
$ vi custom-configs/nis.config-user.properties
```

If you are participating in the Super Node Program, you will also need the following:

```text
$ vi custom-configs/servant.config-user.properties
```

Build the docker container:

```bash
$ ./build.sh
```

Start the docker container:

```bash
$ ./start.sh
```

If you want to connect to a container, use the docker command:

```bash
$ docker exec -it my_nis_container bash
# exit
```

Start the NIS process:

```bash
$ ./nis_boot.sh
```

Start the Super Node Program monitoring tool:

```bash
$ ./servant_boot.sh
```

## How to stop

Stops a running container:

```bash
$ ./stop.sh
```

Rremove the container you created:

```bash
$ ./destroy.sh
```

## How to Process monitor

Register to cron. If the process is down, start the process:

```bash
$ crontab -e
* * * * * /bin/sh /home/nem/nis-docker/monitor.sh
```
