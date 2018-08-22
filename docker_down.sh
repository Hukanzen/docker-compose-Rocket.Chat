#!/bin/bash

DIR=$(cd $(dirname -- $0); pwd)
cd $DIR

./docker_stop.sh
./docker_rm.sh
# rm -rf ./data/db/* ./data/dump/* ./uploads/* 