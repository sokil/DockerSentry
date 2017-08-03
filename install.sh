#!/bin/bash

# check if database initialised
if [[ -d ./share/pgdata ]];
then
    echo "Sentry already installed. Run 'start.sh' to start sentry"
    exit
fi

# start docker containers
docker-compose up

# start migration
docker exec -it sentry-www sentry upgrade

# welcome message
echo -e "\n\033[0;32mOpen http://127.0.0.1:9050/ in your browser\033[0m"
