#!/usr/bin/env bash

bin=`dirname "$this"`
bin=`cd "$bin"; pwd`
export SERVERLIST="${bin}/serverlist/serverlist-$1"

for server in `cat "$SERVERLIST"`; do
  ssh root@$server "sh /root/metricbeat/metricbeat/sbin/start.sh"
done

wait
