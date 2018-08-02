#!/usr/bin/env bash
source /etc/profile
source /home/hadoop/.bash_profile

role="$1"

cd /home/hadoop/elasticsearch/elasticsearch-$role/; ./bin/elasticsearch-plugin install file:///home/hadoop/elasticsearch/kibana-5.4.1-linux-x86_64/x-pack-5.4.1.zip
