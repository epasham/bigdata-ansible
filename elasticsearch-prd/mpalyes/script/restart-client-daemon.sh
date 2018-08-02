#!/usr/bin/env bash
source /etc/profile
source /home/hadoop/.bash_profile

role="client"

kill `cat /home/hadoop/elasticsearch/pid/es_$role.pid`
sleep 1
cd /home/hadoop/elasticsearch/elasticsearch-$role/; bin/elasticsearch -d -p /home/hadoop/elasticsearch/pid/es_$role.pid