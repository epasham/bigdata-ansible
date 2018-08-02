## Intro

This is a bigdata ansible repository for Elasticsearch and Apache Atlas.

You can use this script in production since it's verified by me on my production cluster.

## Goal

It's very important to automate cluster setup. it's not only necessary to setup cluster in a initial phase but also it's useful to update config files and restart cluster or to upgrade the cluster periodically in a stable condition.  

## Elasticsearch

- downloads official ES/Kibana target version and replaces config files as node role(master/data/client).
- It also supports rolling restart.
- It provides various maintenance scripts such as below.
  - start/stop.
  - install plugins among nodes.
  - cluster health check(cluster status/red index count/open index count/unassigned index count)
  - check the master node.
  - etc.

## Apache Atlas

The script downloads official target version and replaces config files which are verified myself.

It also supports simple maintenence scripts including start/stop.

## Production Verification

Even though the script couldn't be the most optimized implementation, the mose useful feature of these scripts are they are executed and maintained in a production environment.

- Elasitcsearch 14 nodes.
- Apache Atlas standalone node.