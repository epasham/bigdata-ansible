#!/bin/sh

bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

echo ""
echo ""
echo "Filebeat BINARY SYNC START-------------------------------------------------------------------------"

. ../elasticsearch-prd/mpalyes/script/env.sh

export HOSTLIST="${bin}/serverlist/serverlist-es-master"
for nodename in `cat "$HOSTLIST"`;
do
    echo "Filebeat BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    ssh root@$nodename "rm -rf /root/filebeat/filebeat"
    ssh root@$nodename "ln -s /root/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-master /root/filebeat/filebeat"
    rsync -rv -e ssh --delete ~/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-master root@$nodename:/root/filebeat
    rsync -rv -e ssh --delete ~/filebeat/script root@$nodename:/root/filebeat
done

export HOSTLIST="${bin}/serverlist/serverlist-es-client-and-kibana"
for nodename in `cat "$HOSTLIST"`;
do
    echo "Filebeat BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    ssh root@$nodename "rm -rf /root/filebeat/filebeat"
    ssh root@$nodename "ln -s /root/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-client-and-kibana /root/filebeat/filebeat"
    rsync -rv -e ssh --delete ~/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-client-and-kibana root@$nodename:/root/filebeat
    rsync -rv -e ssh --delete ~/filebeat/script root@$nodename:/root/filebeat
done

export HOSTLIST="${bin}/serverlist/serverlist-es-master-and-data"
for nodename in `cat "$HOSTLIST"`;
do
    echo "Filebeat BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    ssh root@$nodename "rm -rf /root/filebeat/filebeat"
    ssh root@$nodename "ln -s /root/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-master-and-data /root/filebeat/filebeat"
    rsync -rv -e ssh --delete ~/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-master-and-data root@$nodename:/root/filebeat
    rsync -rv -e ssh --delete ~/filebeat/script root@$nodename:/root/filebeat
done

export HOSTLIST="${bin}/serverlist/serverlist-es-data"
for nodename in `cat "$HOSTLIST"`;
do
    echo "Filebeat BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    ssh root@$nodename "rm -rf /root/filebeat/filebeat"
    ssh root@$nodename "ln -s /root/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-data /root/filebeat/filebeat"
    rsync -rv -e ssh --delete ~/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-data root@$nodename:/root/filebeat
    rsync -rv -e ssh --delete ~/filebeat/script root@$nodename:/root/filebeat
done

export HOSTLIST="${bin}/serverlist/serverlist-nifi"
for nodename in `cat "$HOSTLIST"`;
do
    echo "Filebeat BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    ssh root@$nodename "rm -rf /root/filebeat/filebeat"
    ssh root@$nodename "ln -s /root/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-nifi /root/filebeat/filebeat"
    rsync -rv -e ssh --delete ~/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-nifi root@$nodename:/root/filebeat
    rsync -rv -e ssh --delete ~/filebeat/script root@$nodename:/root/filebeat
done

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
