#!/bin/sh

bin=`dirname "$this"`
bin=`cd "$bin"; pwd`

echo ""
echo ""
echo "Metricbeat BINARY SYNC START-------------------------------------------------------------------------"

. ../elasticsearch-prd/mpalyes/script/env.sh

#for nodename in mpalyes01 mpalyes02 mpalyes03 mpalyes04 mpalyes05 mpalyes06 mpalyes07 mpalyes08 mpalyes09 mpalyes10 mpalyes11 mpalyes12 mpalyes13 mpalyes14
#do
#    echo "Metricbeat BINARY SYNC in $nodename -------------------------------------------------------------------------"
#    rsync -rv -e ssh --delete ~/metricbeat/metricbeat-$metricbeat_VERSION-linux-x86_64-system root@$nodename:/root/metricbeat
#    rsync -rv -e ssh --delete ~/metricbeat/script root@$nodename:/root/metricbeat
#done

role="serverlist-system-and-kafka"
export HOSTLIST="${bin}/serverlist/$role"

for nodename in `cat "$HOSTLIST"`;
do
    echo "Metricbeat BINARY SYNC in $nodename -------------------------------------------------------------------------"
    ssh root@$nodename "rm -rf /root/metricbeat/metricbeat"
    ssh root@$nodename "ln -s /root/metricbeat/metricbeat-$METRICBEAT_VERSION-linux-x86_64-system-and-kafka /root/metricbeat/metricbeat"
    rsync -rv -e ssh --delete ~/metricbeat/metricbeat-$METRICBEAT_VERSION-linux-x86_64-system-and-kafka root@$nodename:/root/metricbeat
    rsync -rv -e ssh --delete ~/metricbeat/script root@$nodename:/root/metricbeat
done

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
