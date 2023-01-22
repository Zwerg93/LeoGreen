#!/usr/bin/env bash

pushd leogreen_server
mvn clean package install
popd

pushd client/leoGreen
npm install
npm run build
popd

pushd k8s
./deploy.sh
popd

pushd client/leoGreen
./deploy.sh
popd