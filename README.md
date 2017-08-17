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

## Sentry

Sentry may be opened by URL: `http://127.0.0.1:9050`

## Cyclops

See more info in https://github.com/sentry-extensions/cyclops

Cyclops instance is accessible by URL: `http://127.0.0.1:9100`

## Usage

Start sentry:
```bash
docker-compose start
```

Stop sentry:
```bash
docker-compose stop
```

Retart sentry:
```bash
docker-compose restart
```

Remove settry:
```bash
docker-compose rm
```
