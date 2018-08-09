## Intro

This is a filebeat install & start & stop script written in Ansible and Bash Shell Script.

## Spec

This is tested on below environment.

- ES 5.x ~ ES 6.x
- filebeat 6.x

## prepare

This script builds filebeat binary.

    $ ./make_filebeat_binary.sh

## sync

This script sends filebeat binary and script to server lists written in **serverlist/serverlist_sample**. This sends filebeat binary to root@nodes written in serverlist_sample using SSH. This binary will use filebeat.yml defined in **config/filebeat.yml**

    $ ./rsync_filebeat.sh
    
## start & stop

Using below scripts, you can start(or stop) filebeat daemon.

    $ ./start.sh sample
    $ ./stop.sh sample

## ps

This script verifies filebeat daemon is running on Each node.

    $ ./ps.sh sample