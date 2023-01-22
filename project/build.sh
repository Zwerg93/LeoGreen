#!/usr/bin/env bash

pushd leogreen_server
mvn clean package install
popd

pushd www
npm install
npm run build
popd

pushd k8s
./deploy.sh
popd

pushd www
./deploy.sh
popd