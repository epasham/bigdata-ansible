#!/usr/bin/env bash

. env.sh
curl -i http://$ES_URL/_cat/indices -k -u admin:bigdata123! | grep red | wc -l

