#!/bin/sh

bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

echo ""
echo ""
echo "Metricbeat BINARY SYNC START-------------------------------------------------------------------------"

. ../elasticsearch-prd/mpalyes/script/env.sh

export HOSTLIST="${bin}/serverlist/serverlist-mpalyes"
for nodename in `cat "$HOSTLIST"`;
do
    echo "Metricbeat BINARY SYNC in $nodename -------------------------------------------------------------------------"
    ssh root@$nodename "rm -rf /root/metricbeat/metricbeat"
    ssh root@$nodename "ln -s /root/metricbeat/metricbeat-$METRICBEAT_VERSION-linux-x86_64-system /root/metricbeat/metricbeat"
    rsync -rv -e ssh --delete ~/metricbeat/metricbeat-$METRICBEAT_VERSION-linux-x86_64-system root@$nodename:/root/metricbeat
    rsync -rv -e ssh --delete ~/metricbeat/script root@$nodename:/root/metricbeat
    ssh root@$nodename "chmod +x /root/metricbeat/script/*.sh"
done

export HOSTLIST="${bin}/serverlist/serverlist-system-and-kafka"

for nodename in `cat "$HOSTLIST"`;
do
    echo "Metricbeat BINARY SYNC in $nodename -------------------------------------------------------------------------"

    ssh root@$nodename "rm -rf /root/metricbeat/metricbeat"
    ssh root@$nodename "ln -s /root/metricbeat/metricbeat-$METRICBEAT_VERSION-linux-x86_64-system-and-kafka /root/metricbeat/metricbeat"
    rsync -rv -e ssh --delete ~/metricbeat/metricbeat-$METRICBEAT_VERSION-linux-x86_64-system-and-kafka root@$nodename:/root/metricbeat
    rsync -rv -e ssh --delete ~/metricbeat/script root@$nodename:/root/metricbeat
    ssh root@$nodename "chmod +x /root/metricbeat/script/*.sh"
done

export HOSTLIST="${bin}/serverlist/serverlist-system-and-zookeeper"

for nodename in `cat "$HOSTLIST"`;
do
    echo "Metricbeat BINARY SYNC in $nodename -------------------------------------------------------------------------"

    ssh root@$nodename "rm -rf /root/metricbeat/metricbeat"
    ssh root@$nodename "ln -s /root/metricbeat/metricbeat-$METRICBEAT_VERSION-linux-x86_64-system-and-zookeeper /root/metricbeat/metricbeat"
    rsync -rv -e ssh --delete ~/metricbeat/metricbeat-$METRICBEAT_VERSION-linux-x86_64-system-and-zookeeper root@$nodename:/root/metricbeat
    rsync -rv -e ssh --delete ~/metricbeat/script root@$nodename:/root/metricbeat
    ssh root@$nodename "chmod +x /root/metricbeat/script/*.sh"
done

export HOSTLIST="${bin}/serverlist/serverlist-toros"

for nodename in `cat "$HOSTLIST"`;
do
    echo "Metricbeat BINARY SYNC in $nodename -------------------------------------------------------------------------"
    # 임시 시작
    ssh root@$nodename "rm -rf /root/metricbeat"
    ssh root@$nodename "mkdir /root/metricbeat"
    ssh root@$nodename "mv /root/metricbeat*_64 /root/metricbeat"
    # 임시 끝

    ssh root@$nodename "rm -rf /root/metricbeat/metricbeat"
    ssh root@$nodename "ln -s /root/metricbeat/metricbeat-$METRICBEAT_VERSION-linux-x86_64-system /root/metricbeat/metricbeat"
    rsync -rv -e ssh --delete ~/metricbeat/metricbeat-$METRICBEAT_VERSION-linux-x86_64-system root@$nodename:/root/metricbeat
    rsync -rv -e ssh --delete ~/metricbeat/script root@$nodename:/root/metricbeat
    ssh root@$nodename "chmod +x /root/metricbeat/script/*.sh"
done

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
