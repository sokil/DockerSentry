#!/bin/bash

CYCLOPS_PORT=9100

# wait for sentry to be installed
while true; do
    echo "Try to start cyclops"
    cyclops -p $CYCLOPS_PORT -c /cyclops.conf 2> /dev/null

    # on error sleep for 10 seconds
    if [[ $? -eq 0 ]]; then
        echo "Cyclops started successfully on port $CYCLOPS_PORT"
        break;
    fi
    sleep 10
done

