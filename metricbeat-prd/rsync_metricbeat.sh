#!/bin/sh

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

for nodename in mpcollect01 mpcollect02 mpcollect03
do
    echo "Metricbeat BINARY SYNC in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete ~/metricbeat/metricbeat-$metricbeat_VERSION-linux-x86_64-system-and-kafka root@$nodename:/root/metricbeat
    rsync -rv -e ssh --delete ~/metricbeat/script root@$nodename:/root/metricbeat
done

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
