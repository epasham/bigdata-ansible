#!/usr/bin/env bash


nohup ssh $1 "/home/hadoop/elasticsearch/script/stop-daemon.sh data" > /dev/null
