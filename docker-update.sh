#!/bin/bash

echo "Building reg.serverdm.net/caddy/caddy:latest"

docker login reg.serverdm.net
docker build --pull -t reg.serverdm.net/caddy/caddy:latest .
#docker buildx build --push --platform linux/arm64/v8,linux/amd64 --tag reg.serverdm.net/caddy/caddy:latest .
docker push reg.serverdm.net/caddy/caddy:latest
