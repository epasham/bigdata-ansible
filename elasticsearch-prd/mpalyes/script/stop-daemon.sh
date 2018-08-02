#!/usr/bin/env bash
source /etc/profile
source /home/hadoop/.bash_profile

role="$1"

kill `cat /home/hadoop/elasticsearch/pid/es_$role.pid`
#kill `jps | grep Elasticsearch | awk '{print $1}'`
