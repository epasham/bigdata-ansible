#!/usr/bin/env bash
source /etc/profile
source /home/hadoop/.bash_profile


kill `cat /home/hadoop/elasticsearch/pid/kibana.pid`
