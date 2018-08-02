#!/usr/bin/env bash
ansible mpalyes_master -m shell -a "ls ~/elasticsearch/script/stop-daemon.sh master" -i ansible/mpalyes_inventory -u hadoop
ansible mpalyes_master -m shell -a "ls ~/elasticsearch/script/start-daemon.sh master" -i ansible/mpalyes_inventory -u hadoop

ansible mpalyes_data -m shell -a "ls ~/elasticsearch/script/stop-daemon.sh data" -i ansible/mpalyes_inventory -u hadoop
ansible mpalyes_data -m shell -a "ls ~/elasticsearch/script/start-daemon.sh data" -i ansible/mpalyes_inventory -u hadoop

ansible mpalyes_client -m shell -a "ls ~/elasticsearch/script/stop-daemon.sh client" -i ansible/mpalyes_inventory -u hadoop
ansible mpalyes_client -m shell -a "ls ~/elasticsearch/script/start-daemon.sh client" -i ansible/mpalyes_inventory -u hadoop