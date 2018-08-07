#!/usr/bin/env bash

export REDASH_VERSION=5.0.0-beta

rm -rf build
git clone https://github.com/getredash/redash build
cd build && git checkout v$REDASH_VERSION
rm Dockerfile
cp ../Dockerfile .
docker build -t lks21c/redash:$REDASH_VERSION .
cd .. && rm -rf build