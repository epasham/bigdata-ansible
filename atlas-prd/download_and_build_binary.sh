#!/usr/bin/env bash

. script/env.sh
rm -rf binary
git clone https://github.com/apache/atlas binary
cd binary && mvn clean -DskipTests package -Pdist
cp distro/target/apache-atlas-$ATLAS_VERSION-bin.tar.gz .
cd ..
rm -rf binary