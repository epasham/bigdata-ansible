#!/usr/bin/env bash

bin=`dirname "$this"`
bin=`cd "$bin"; pwd`
export SERVERLIST="${bin}/serverlist/serverlist_$1"

for server in `cat "$SERVERLIST"`; do
  ssh root@$server "sh /root/filebeat/filebeat-6.3.2-linux-x86_64-$1 filebeat"
done

wait
