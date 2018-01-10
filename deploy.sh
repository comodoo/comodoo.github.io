#!/usr/bin/env bash
docker build -t comodooweb .
docker run -d -v $(pwd):/srv/site -p 8181:8181 --name comodooweb comodooweb