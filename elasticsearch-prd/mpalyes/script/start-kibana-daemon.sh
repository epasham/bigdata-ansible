#!/usr/bin/env bash
source /etc/profile
source /home/hadoop/.bash_profile

cd /home/hadoop/elasticsearch/kibana/; nohup bin/kibana  > /dev/null &
