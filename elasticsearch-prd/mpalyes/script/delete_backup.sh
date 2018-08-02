#!/usr/bin/env bash

role="data"
bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

export HOSTLIST="${bin}/serverlist"

echo $HOSTLIST

for master in `cat "$HOSTLIST"`; do
  ssh $master "rm -rf /data23/backup/*"
  echo delete $master
done

wait
