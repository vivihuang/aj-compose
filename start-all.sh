#!/usr/bin/env bash

build_gradlew() {
  echo "==== Build all images before start ===="
  cd ../aj-bff
  ./gradlew bootjar
  cd ../aj-backend
  ./gradlew bootjar
  cd ../aj-compose
  docker-compose build
}

case $1 in
  build)
    build_gradlew
    ;;
  update)
    echo "==== Update and build ===="
    ./pull-all.sh
    build_gradlew
    ;;
esac

echo -e "\n==== ☢️  The nuclear is preparing.... ===="
docker-compose up

echo -e "\n==== 🚿 Revoming all services... please do NOT Ctrl-C again ===="
docker-compose down

echo -e "\n==== 🎉 Congratulations on getting a clean computer! ===="
