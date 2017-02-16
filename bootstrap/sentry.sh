#!/bin/bash

# export SENTRY_SECRET_KEY=$(sentry config generate-secret-key)

echo "UPGRADE"
sentry upgrade

echo "START"
sentry run

echo "CRON"
sentry run cron

echo "WORKER"
sentry run worker