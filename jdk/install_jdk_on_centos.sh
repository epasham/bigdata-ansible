#!/usr/bin/env bash
cd /tmp && rm -rf jdk-8u181-linux-x64.tar.gz && wget http://www.kwangsiklee.com/wp-content/uploads/direct/jdk-8u181-linux-x64.tar.gz
cd ~/repo/bigdata-ansible/jdk && ansible-playbook ansible/jdk.yml --become