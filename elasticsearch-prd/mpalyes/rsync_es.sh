#!/bin/sh

echo ""
echo ""
echo "ES ALY BINARY SYNC START-------------------------------------------------------------------------"

for nodename in mpalyes01 mpalyes02 mpalyes03 mpalyes04 mpalyes05 mpalyes06 mpalyes07 mpalyes08 mpalyes09 mpalyes10 mpalyes11 mpalyes12 mpalyes13 mpalyes14
do
    echo "ES ALY BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete ~/elasticsearch/elasticsearch-$ES_VERSION-data hadoop@$nodename:/home/hadoop/elasticsearch
    rsync -rv -e ssh --delete ~/elasticsearch/elasticsearch-$ES_VERSION-client hadoop@$nodename:/home/hadoop/elasticsearch
    rsync -rv -e ssh --delete ~/elasticsearch/elasticsearch-$ES_VERSION-master hadoop@$nodename:/home/hadoop/elasticsearch
    rsync -rv -e ssh --delete ~/elasticsearch/script hadoop@$nodename:/home/hadoop/elasticsearch
done

for nodename in mpalyes12 mpalyes13 mpalyes14
do
    echo "ES ALY BINARY SYNC es in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete ~/elasticsearch/elasticsearch-$ES_VERSION-data2 hadoop@$nodename:/home/hadoop/elasticsearch
done

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
