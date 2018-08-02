#!/usr/bin/env bash

role="serverlist"
bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

export HOSTLIST="${bin}/$role"

for servername in `cat "$HOSTLIST"`; do
  ssh $servername "/home/hadoop/elasticsearch5/script/install_plugin.sh"
  echo install es plugins on $servername
done

wait
