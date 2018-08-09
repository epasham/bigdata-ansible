#!/bin/sh

echo ""
echo ""
echo "ES ALY BINARY SYNC START-------------------------------------------------------------------------"

. ../elasticsearch-prd/mpalyes/script/env.sh

echo "ES ALY BINARY SYNC Kibana-------------------------------------------------------------------------"
rsync -rv -e ssh --delete ~/elasticsearch/kibana-$KIBANA_VERSION-linux-x86_64 hadoop@mpalyes10:/home/hadoop/elasticsearch
rsync -rv -e ssh --delete ~/elasticsearch/kibana-$KIBANA_VERSION-linux-x86_64 hadoop@mpalyes11:/home/hadoop/elasticsearch

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
