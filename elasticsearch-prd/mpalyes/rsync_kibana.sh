#!/bin/sh

echo ""
echo ""
echo "ES ALY BINARY SYNC START-------------------------------------------------------------------------"

. script/env.sh

export ROLE=plain
echo "ES ALY BINARY SYNC Kibana-------------------------------------------------------------------------"
ssh hadoop@mpalyes10 "rm -rf /home/hadoop/elasticsearch/kibana"
ssh hadoop@mpalyes10 "ln -s /home/hadoop/elasticsearch/kibana-$KIBANA_VERSION-$ROLE-linux-x86_64 /home/hadoop/elasticsearch/kibana"
rsync -rv -e ssh --delete ~/elasticsearch/kibana-$KIBANA_VERSION-$ROLE-linux-x86_64 hadoop@mpalyes10:/home/hadoop/elasticsearch

export ROLE=esc
ssh hadoop@mpalyes11 "rm -rf /home/hadoop/elasticsearch/kibana"
ssh hadoop@mpalyes11 "ln -s /home/hadoop/elasticsearch/kibana-$KIBANA_VERSION-$ROLE-linux-x86_64 /home/hadoop/elasticsearch/kibana"
rsync -rv -e ssh --delete ~/elasticsearch/kibana-$KIBANA_VERSION-$ROLE-linux-x86_64 hadoop@mpalyes11:/home/hadoop/elasticsearch

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
