#!/usr/bin/env bash

role="data"
bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

export HOSTLIST="${bin}/serverlist_$role"

echo $HOSTLIST

for master in `cat "$HOSTLIST"`; do
  ssh $master "/home/hadoop/elasticsearch/script/start-daemon.sh $role"
  echo start $master
done

wait
