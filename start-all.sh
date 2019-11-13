#!/usr/bin/env bash

case $1 in
  build)
    echo "==== Build all images before start ===="
    docker-compose build
    ;;
  update)
    echo "==== Update and build ===="
    ./pull-all.sh
    ./start-all.sh build
    ;;
esac

docker-compose up

docker-compose down
