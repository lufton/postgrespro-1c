#!/bin/sh

docker run --name postgrespro-1c --restart always \
  --net host \
  --detach \
  --volume postgrespro-1c-data:/data \
  --volume /etc/localtime:/etc/localtime:ro \
  --env POSTGRES_PASSWORD=123 \
  a4neg/postgrespro-1c
