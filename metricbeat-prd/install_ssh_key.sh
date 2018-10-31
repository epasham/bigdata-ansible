#!/usr/bin/env bash

bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

export HOSTLIST="${bin}/serverlist_$1"

echo $HOSTLIST

for master in `cat "$HOSTLIST"`; do
  echo "$master installed"
  ssh root@$master "echo 'ssh_key' >> ~/.ssh/authorized_keys"
done

wait
