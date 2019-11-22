#!/usr/bin/env bash

echo "==== Build BFF ===="
cd ../aj-georgia
./gradlew bootjar
docker build -t aj/georgia .

echo "==== Build Custom action ===="
cd ../aj-latvia
./gradlew bootjar
docker build -t aj/latvia .

echo "==== Build DialogFlow ===="
cd ../aj-khorezm
./gradlew bootjar
docker build -t aj/khorezm .

echo "==== All build done, back to Russia ===="
cd ../aj-russia
