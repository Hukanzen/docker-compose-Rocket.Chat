#!/bin/bash 

docker start rocketchat.mongo
echo "Waiting ..."
sleep 60
docker start rocketchat.rocketchat