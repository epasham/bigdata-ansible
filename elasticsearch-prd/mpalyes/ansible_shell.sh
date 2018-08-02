#!/usr/bin/env bash

ansible mpalyes -m shell -a "ls ~/elasticsearch" -i ansible/mpalyes_inventory -u hadoop

ansible mpalyes -m shell -a "df -h" -i ansible/mpalyes_inventory -u hadoop

