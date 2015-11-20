#!/bin/bash
cd `dirname $0`
. ./common.sh

docker-compose -f $DOCKER_WORK_DIR/conf/docker-registry-compose.yml up -d 
