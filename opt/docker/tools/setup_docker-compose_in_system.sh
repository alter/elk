#!/bin/bash
version=$(curl https://github.com/docker/compose/releases/ | egrep 'docker/compose/releases/tag' |head -1 | awk -F '>' '{print $2}' | awk -F '<' '{print $1}')
sudo apt-get install python3-pip -y
sudo pip3 install -U docker-compose==$version
