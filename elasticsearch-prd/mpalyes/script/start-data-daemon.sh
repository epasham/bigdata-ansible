#!/usr/bin/env bash
source /etc/profile
source /home/hadoop/.bash_profile

role="data"

cd /home/hadoop/elasticsearch/elasticsearch-$role/; bin/elasticsearch -d -p /home/hadoop/elasticsearch/pid/es_$role.pid