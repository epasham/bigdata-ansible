#!/usr/bin/env bash

. env.sh
curl -XGET $ES_URL/_cat/indices | grep open | wc -l