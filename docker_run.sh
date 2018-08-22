#!/bin/bash

DIR=$(cd $(dirname -- $0); pwd)
cd $DIR

docker run --name rocketchat.db -d mongo:3.0 --smallfiles
# echo "Waiting ..."
# sleep 10

docker run --name rocketchat.rocketchat -p 3000:3000 --env ROOT_URL=http://localhost --link rocketchat.db:db -d rocket.chat
