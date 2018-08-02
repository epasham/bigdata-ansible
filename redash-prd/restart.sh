#!/usr/bin/env bash

ssh suser@mpredash "cd /home/suser/redash && sh 004_restart.sh"
ssh suser@mpredash02 "cd /home/suser/redash && sh 004_restart.sh"