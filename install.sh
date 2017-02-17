#!/bin/bash

# check if database initialised
if [[ -d ./share/pgdata ]];
then
    echo "Sentry already installed. Run 'run.sh' to start sentry"
    exit
fi

# start docker containers
./run.sh

# start migration
docker exec -it sentry-www upgrade

# welcome message
echo "Open http://127.0.0.1:9000/ in your browser"