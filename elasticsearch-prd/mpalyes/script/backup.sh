#!/usr/bin/env bash

role="data"
bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

export HOSTLIST="${bin}/serverlist"

echo $HOSTLIST

for master in `cat "$HOSTLIST"`; do
  ssh $master "rm /data23/backup.tar.gz"
  ssh $master "rm /data23/backup_$master.tar.gz"
  ssh $master "tar czvf /data23/backup_$master.tar.gz /data23/backup"
  echo start $master
done

wait
