#!/usr/bin/env bash

. env.sh
curl -i http://$ES_URL/_cat/nodes?v -k -u admin:bigdata123!
