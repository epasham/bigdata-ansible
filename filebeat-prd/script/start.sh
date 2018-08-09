#!/usr/bin/env bash
nohup /root/filebeat/filebeat -e -c /root/filebeat/filebeat.yml -d "publish"
