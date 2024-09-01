# NIS Docker

Customized Docker files provided by the [core team](https://github.com/NemProject/nem-docker).

To participate in the [Supernode Program](https://docs.nem.io/pages/Guides/supernode-program/docs.en.html), please see below.


## Prerequisites

[Docker](https://docs.docker.com/get-docker/) installation is required.

## Installation

Clone [this repository](https://github.com/curupo/nis-docker):

```bash
$ git clone https://github.com/curupo/nis-docker.git
$ cd nis-docker
```

## How to run

The required values must be set. See the [documentation](https://docs.nem.io/pages/) for details:


```text
$ vi ./docker/nis/config-user.properties
```

If you are participating in the Supernode Program, you will also need the following:

```text
$ vi ./.docker/servant/servant.config.properties
```

Build the docker container:

```bash
$ ./nis_build.sh
```

Start the docker container:

```bash
$ ./nis_start.sh
```

Start the Supernode Program monitoring tool:

```bash
$ ./servant_build.sh
```

Start the docker container:

```bash
$ ./servant_start.sh
```

## How to stop

Stops a running container:

```bash
$ ./nis_stop.sh
$ ./servant_stop.sh
```

Rremove the container you created:

```bash
$ ./nis_destroy.sh
$ ./servant_destroy.sh
```
