#!/usr/bin/env bash

role="data"
bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

export HOSTLIST="${bin}/serverlist"

echo $HOSTLIST

for master in `cat "$HOSTLIST"`; do
    scp $master:/data23/backup_$master.tar.gz /home/hadoop/backup
    echo copy $master
done

wait
