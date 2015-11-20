#!/bin/bash
. ./common.sh

function usage {
	echo "usage: $0 <login> <password>"
}


if [ "$#" -ne 2 ]
then
	usage
	exit 1
fi

user=$1
password=$2
docker run --rm --entrypoint htpasswd registry:2 -Bbn "$1" "$2" >> "$DOCKER_WORK_DIR/auth/htpasswd"
