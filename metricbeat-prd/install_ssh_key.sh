#!/usr/bin/env bash

bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

export HOSTLIST="${bin}/serverlist/serverlist-$1"
for nodename in `cat "$HOSTLIST"`;
do
  echo "Installed $nodename -------------------------------------------------------------------------"
  ssh root@nodename "echo 'ssh_key' >> ~/.ssh/authorized_keys"
done

wait
