#!/bin/bash

. ./common.sh

docker-compose -f $DOCKER_WORK_DIR/conf/docker-registry-compose.yml stop 
