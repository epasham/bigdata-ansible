#!/usr/bin/env bash
nohup /root/metricbeat/metricbeat -e -c /root/metricbeat/metricbeat.yml > /dev/null 2>&1 &
