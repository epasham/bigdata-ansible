## Intro

This is a metricbeat install & start & stop script.

## Spec

This is tested on below environment.

- ES 6.x
- metricbeat 6.x

## prepare

This script creates metricbeat binary.

    $ ./make_metric_binary.sh

## sync

This script sends metricbeat binary and script to server lists written in **serverlist/serverlist_sample**. This sends metricbeat binary to root@nodes written in serverlist_sample using SSH. This binary will use metricbeat.yml defined in **config/metricbeat.yml**

    $ ./sync.sh sample
    
## start & stop

Using below scripts, you can start(or stop) metricbeat daemon.

    $ ./start.sh sample
    $ ./stop.sh sample

## ps

This script verifies metricbeat daemon is running on Each node.

    $ ./ps.sh sample
