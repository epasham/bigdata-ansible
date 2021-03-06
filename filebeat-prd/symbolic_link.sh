#!/usr/bin/env bash

bin=`dirname "$this"`
bin=`cd "$bin"; pwd`
export SERVERLIST="${bin}/serverlist/serverlist-$1"

. ../elasticsearch-prd/mpalyes/script/env.sh

for server in `cat "$SERVERLIST"`; do
    echo "ssh root@$server "ln -s /root/filebeat/filebeat-$ES_VERSION-linux-x86_64-$1 filebeat""
    ssh root@$server "ln -s /root/filebeat/filebeat-$ES_VERSION-linux-x86_64-$1 /root/filebeat/filebeat"
done

wait
