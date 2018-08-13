## Intro

This is a metricbeat install & start & stop script.

## Spec

This is tested on below environment.

- ES 6.x
- metricbeat 6.x

## prepare

This script creates metricbeat binary. This scrips builds system only binary and system/kafka binary and so on.

    $ ./make_metric_binary.sh

## sync

This script sends metricbeat binary and script to each server.

    $ ./rsync_metricbeat.sh
    
## start & stop

Using below scripts, you can start(or stop) metricbeat daemon.

    $ ./start.sh sample
    $ ./stop.sh sample

## ps

This script verifies metricbeat daemon is running on Each node.

    $ ./ps.sh sample