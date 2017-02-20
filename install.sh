#!/bin/bash

# check if database initialised
if [[ -d ./share/pgdata ]];
then
    echo "Sentry already installed. Run 'run.sh' to start sentry"
    exit
fi

# start docker containers
bash ./run.sh

# start migration
docker exec -it sentry-www sentry upgrade

# welcome message
echo "Open http://127.0.0.1:9000/ in your browser"
