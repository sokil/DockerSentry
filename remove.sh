#!/bin/bash

# confirm
while true; do
    read -p "Do you really want to drop Sentry containers? (y/n): " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# drop containers
docker ps -a -f NAME=sentry --format "{{.Names}}" | xargs -I{} docker rm {}
