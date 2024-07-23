# NEM Docker

This Docker file and the helper scripts are the fastest and easiest way deploy a [NEM](https://nemproject.github.io/nem-docs/pages/) node.
This information is required to participate in the [Supernode Program](https://docs.nem.io/pages/Guides/supernode-program/docs.en.html).

## Prerequisites

- You need [Docker](https://docs.docker.com/get-docker/) installed.

## Installation

Just clone [this repository](https://github.com/curupo/nis-docker) and move into it:

```bash
$ git clone https://github.com/curupo/nis-docker.git
$ cd nis-docker
```

## How to run

Set value is required:

```text
$ vi custom-configs/nis.config-user.properties
$ vi custom-configs/servant.config-user.properties
```

Depending on the way you have configured Docker, you might need to run these commands as root (or equivalently prefixed by ``sudo``):

```bash
$ ./boot.sh
```

If you do not want to participate in the super node program, comment out the line to activate the servant:

```bash
$ vi boot.sh
```

This will start the NIS process in a Docker container named ``my_nis_container``:

## How to stop

To stop the container running services, simply execute:

```bash
$ ./stop.sh
```

## How to destroy

To remove the container, simply execute:

```bash
$ ./destroy.sh
```
