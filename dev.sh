#!/bin/sh

# create log files
( [ -e "data/logs/access.log" ] || touch "data/logs/access.log" ) && [ ! -w "data/logs/access.log" ] && echo "access.log not writeable!" && exit 1
( [ -e "data/logs/error.log" ] || touch "data/logs/error.log" ) && [ ! -w "data/logs/error.log" ] && echo "error.log not writeable!" && exit 1

cd .docker && docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d
