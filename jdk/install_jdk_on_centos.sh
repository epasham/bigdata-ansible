#!/usr/bin/env bash
cd /tmp && wget http://www.kwangsiklee.com/wp-content/uploads/direct/jdk-8u181-linux-x64.tar.gz
ansible-playbook ansible/jdk.yml --become --ask-sudo-pass