#!/bin/bash

DIR=$(cd $(dirname -- $0); pwd)
echo $DIR

docker run --name rocketchat.db -d mongo:3.0 --smallfiles
echo "Waiting ..."
sleep 20

docker run --name rocketchat.rocketchat -p 80:3000 --env ROOT_URL=http://localhost --link rocketchat.db:db -d rocket.chat
