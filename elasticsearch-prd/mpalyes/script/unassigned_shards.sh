#!/usr/bin/env bash

. env.sh
curl -XGET $ES_URL/_cat/shards?h=index,shard,prirep,state,unassigned.reason| grep UNASSIGNED