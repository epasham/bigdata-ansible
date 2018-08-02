#!/usr/bin/env bash

. script/env.sh

# 1번재 마스터는 heap 30G
for nodename in mpalyes01
do
    echo "change jvm option file in $nodename -------------------------------------------------------------------------"
    ssh hadoop@$nodename "rm /home/hadoop/elasticsearch/elasticsearch-$ES_VERSION-master/config/jvm.options"
    ssh hadoop@$nodename "cp /home/hadoop/elasticsearch/elasticsearch-$ES_VERSION-master/config/jvm_30g.options /home/hadoop/elasticsearch/elasticsearch-$ES_VERSION-master/config/jvm.options"
done

# 2,3번재 마스터는 heap 4G
for nodename in mpalyes02 mpalyes03
do
    echo "change jvm option file in $nodename -------------------------------------------------------------------------"
    ssh hadoop@$nodename "rm /home/hadoop/elasticsearch/elasticsearch-$ES_VERSION-master/config/jvm.options"
    ssh hadoop@$nodename "cp /home/hadoop/elasticsearch/elasticsearch-$ES_VERSION-master/config/jvm_4g.options /home/hadoop/elasticsearch/elasticsearch-$ES_VERSION-master/config/jvm.options"
done

# 12~14번 장비는 data 2번째 준비해놓음
for nodename in mpalyes12 mpalyes13 mpalyes14
do
    echo "change jvm option file in $nodename -------------------------------------------------------------------------"
    ssh hadoop@$nodename "rm /home/hadoop/elasticsearch/elasticsearch-$ES_VERSION-data/config/jvm.options"
    ssh hadoop@$nodename "cp /home/hadoop/elasticsearch/elasticsearch-$ES_VERSION-data/config/jvm_32g.options /home/hadoop/elasticsearch/elasticsearch-$ES_VERSION-data/config/jvm.options"
done