#!/usr/bin/env bash

role="data"
bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

export HOSTLIST="${bin}/serverlist"

. script/env.sh

for master in `cat "$HOSTLIST"`; do
  ssh $master "rm -rf ~/elasticsearch/elasticsearch-data"
  ssh $master "ln -s ~/elasticsearch/elasticsearch-$ES_VERSION-$role ~/elasticsearch/elasticsearch-$role"
  echo "change" $master
done

wait
