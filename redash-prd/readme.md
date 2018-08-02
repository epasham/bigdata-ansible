## Intro

This is a Oracle enabled server using docker-compose on Redash 4.0.1.

## Feature

I installed relavant Oracle instant client packages on top of official redash docker image and revised the docker image and tested Oracle connection and sample query executed Successfully.

## Usage

You can simply run below commands to start redash docker daemons.

    # ... in the script directory
    $ ./001_create_db.sh
    $ ./002_run.sh

## Build your own docker image

You can make the latest redash docker image than enables Oracle Datasource by below shell script.
It will generate the new docker image into lks21c/redash:4.0.1.
However, I already made lks21c/redash:4.0.1 so you can use pre-built docker image and you don't need to build yourself. 

    # ... in the script directory
    $ ./bulid.sh