#!/bin/sh

echo ""
echo ""
echo "ATLAS BINARY SYNC START-------------------------------------------------------------------------"

. script/env.sh

for nodename in mpalyapi01
do
    echo "ATLAS BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete --exclude apache-atlas-$ATLAS_VERSION/data --exclude apache-atlas-$ATLAS_VERSION/solr/server/solr --exclude apache-atlas-$ATLAS_VERSION/metastore_db  ~/atlas/apache-atlas-$ATLAS_VERSION suser@$nodename:/home/suser/
    rsync -rv -e ssh --delete ~/atlas/script suser@$nodename:/home/suser/
done

for nodename in mpcollect01 mpcollect02
do
    echo "ATLAS BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete ~/atlas/apache-atlas-$ATLAS_VERSION hadoop@$nodename:/home/hadoop/
    rsync -rv -e ssh --delete ~/atlas/apache-atlas-$ATLAS_VERSION/conf/atlas-application.properties hadoop@$nodename:/home/hadoop/hive/conf/atlas-application.properties
done



echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
