#!/bin/bash

docker build -t guano:build  .

docker run -d --rm --name guano guano:build sleep 99

docker cp guano:/usr/local/target/guano-0.1a.jar ./guano-0.1a.jar

#docker stop guano && docker rm guano
