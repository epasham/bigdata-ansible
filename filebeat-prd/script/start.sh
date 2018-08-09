#!/usr/bin/env bash
nohup /root/filebeat/filebeat/filebeat -e -c /root/filebeat/filebeat/filebeat.yml -d "publish" > /dev/null 2>&1 &
