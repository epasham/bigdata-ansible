#!/usr/bin/env bash

role="data"
bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

export HOSTLIST="${bin}/serverlist_$role"

for master in `cat "$HOSTLIST"`; do
  ssh $master "/home/hadoop/elasticsearch/script/stop-daemon.sh $role"
  echo stop $master
done

wait
