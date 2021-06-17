#!/bin/bash

rm -rf /docker-hy.github.io/
git clone https://github.com/Luukuton/docker-hy.github.io
cd docker-hy.github.io
docker build -t build-assignment-hy .
docker tag build-assignment-hy:latest luukuton/build-assignment-hy
docker login
docker push luukuton/build-assignment-hy
