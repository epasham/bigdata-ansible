#!/usr/bin/env bash

. env.sh
watch -n 5 curl -s http://$ES_URL/_cluster/health | cat