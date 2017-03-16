# Sentry Dockerizer

Compose sentry as docker containers

## Installation

First install `docker` as described in [Manual](https://docs.docker.com/engine/installation/).

Next install `docker-compose`:

```
pip install docker-compose
```

Then run `install.sh` to start containers and initialise sentry. Pass email and password.

Now sentry may be accessible by address `http://127.0.0.1:9050`

## Usage

Run `start.sh` to start container.
Run `restart.sh` to restart container.
Run `stop.sh` to stop container.
Run `remove.sh` to remove container.
