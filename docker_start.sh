#!/bin/bash 

docker start rocketchat.db
echo "Waiting ..."
sleep 60
docker start rocketchat.rocketchat