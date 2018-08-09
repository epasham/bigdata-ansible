#!/bin/sh

echo ""
echo ""
echo "Filebeat BINARY SYNC START-------------------------------------------------------------------------"

. ../elasticsearch-prd/mpalyes/script/env.sh

for nodename in mpalyes01
do
    echo "Filebeat BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete ~/filebeat/filebeat-$ES_VERSION-master hadoop@$nodename:/home/hadoop/filebeat
done

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
