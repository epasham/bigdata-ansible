#!/usr/bin/env bash
source /etc/profile
source /home/hadoop/.bash_profile

role="$1"

cd /home/hadoop/elasticsearch/kibana-5.4.1-SNAPSHOT-linux-x86_64/; ./bin/kibana-plugin install file:///home/hadoop/elasticsearch/kibana-5.4.1-SNAPSHOT-linux-x86_64/x-pack-5.4.1.zip
