#!/bin/sh

echo ""
echo ""
echo "ES ALY BINARY SYNC START-------------------------------------------------------------------------"

. script/env.sh

export ROLE=plain
export NODE=mpalyes10
echo "ES ALY BINARY SYNC Kibana-------------------------------------------------------------------------"
ssh hadoop@$NODE "rm -rf /home/hadoop/elasticsearch/kibana"
ssh hadoop@$NODE "ln -s /home/hadoop/elasticsearch/kibana-$KIBANA_VERSION-$ROLE-linux-x86_64 /home/hadoop/elasticsearch/kibana"
rsync -rv -e ssh --delete ~/elasticsearch/kibana-$KIBANA_VERSION-$ROLE-linux-x86_64 hadoop@$NODE:/home/hadoop/elasticsearch

export ROLE=plain
export NODE=mpalyes11
ssh hadoop@$NODE "rm -rf /home/hadoop/elasticsearch/kibana"
ssh hadoop@$NODE "ln -s /home/hadoop/elasticsearch/kibana-$KIBANA_VERSION-$ROLE-linux-x86_64 /home/hadoop/elasticsearch/kibana"
rsync -rv -e ssh --delete ~/elasticsearch/kibana-$KIBANA_VERSION-$ROLE-linux-x86_64 hadoop@$NODE:/home/hadoop/elasticsearch

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
