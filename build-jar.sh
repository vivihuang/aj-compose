#!/usr/bin/env bash

echo "==== Build BFF ===="
cd ../aj-bff
./gradlew bootjar
docker build -t aj/bff .

echo "==== Build Backend ===="
cd ../aj-backend
./gradlew bootjar
docker build -t aj/backend .

echo "==== All build done, back to Russia ===="
cd ../aj-compose
