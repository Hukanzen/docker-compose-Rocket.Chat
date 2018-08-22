#!/bin/bash

DIR=$(cd $(dirname -- $0); pwd)
echo $DIR

# docker run --name rocketchat.mongo      -v "$DIR"/data/db:/data/db -v "$DIR"/data/dump:/dump -p 27017 -d mongo:latest  --smallfiles
docker run --name db -d mongo:3.0 --smallfiles
echo "Waiting ..."
sleep 20
# docker run --name rocketchat.rocketchat -v "$DIR"/uploads:/app/uploads -p 80:3000 --env ROOT_URL=http://localhost --link rocketchat.mongo -d rocket.chat
docker run --name rocketchat -p 80:3000 --env ROOT_URL=http://localhost --link db -d rocket.chat
docker ps