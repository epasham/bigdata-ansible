#!/bin/sh

bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

echo ""
echo ""
echo "Metricbeat BINARY SYNC START-------------------------------------------------------------------------"

. ../elasticsearch-prd/mpalyes/script/env.sh

export HOSTLIST="${bin}/serverlist/serverlist-system"
#for nodename in `cat "$HOSTLIST"`;
#do
#    echo "Metricbeat BINARY SYNC in $nodename -------------------------------------------------------------------------"
#    rsync -rv -e ssh --delete ~/metricbeat/metricbeat-$metricbeat_VERSION-linux-x86_64-system root@$nodename:/root/metricbeat
#    rsync -rv -e ssh --delete ~/metricbeat/script root@$nodename:/root/metricbeat
#done

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

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
