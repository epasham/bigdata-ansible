#!/bin/sh

echo ""
echo ""
echo "Filebeat BINARY SYNC START-------------------------------------------------------------------------"

. ../elasticsearch-prd/mpalyes/script/env.sh

for nodename in mpalyes01
do
    echo "Filebeat BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete ~/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-master root@$nodename:/root/filebeat
    rsync -rv -e ssh --delete ~/filebeat/script root@$nodename:/root/filebeat
done

for nodename in mpalyes10 mpalyes11
do
    echo "Filebeat BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete ~/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-client root@$nodename:/root/filebeat
    rsync -rv -e ssh --delete ~/filebeat/script root@$nodename:/root/filebeat
done

for nodename in mpalyes02 mpalyes03 mpalyes04 mpalyes05 mpalyes06 mpalyes07 mpalyes08 mpalyes09 mpalyes12 mpalyes13 mpalyes14
do
    echo "Filebeat BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete ~/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-es-master-and-data root@$nodename:/root/filebeat
    rsync -rv -e ssh --delete ~/filebeat/script root@$nodename:/root/filebeat
done

for nodename in mpcollect03
do
    echo "Filebeat BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete ~/filebeat/filebeat-$FILEBEAT_VERSION-linux-x86_64-nifi root@$nodename:/root/filebeat
    rsync -rv -e ssh --delete ~/filebeat/script root@$nodename:/root/filebeat
done

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
