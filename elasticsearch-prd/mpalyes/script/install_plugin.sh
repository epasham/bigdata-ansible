#!/usr/bin/env bash
source /etc/profile
source /home/hadoop/.bash_profile

cd /home/hadoop/elasticsearch5/elasticsearch-5.2.0/; bin/elasticsearch-plugin install -s file:///home/hadoop/elasticsearch5/binary/elasticsearch-analysis-mecab-ko-5.2.0.0.zip
cd /home/hadoop/elasticsearch5/elasticsearch-5.2.0/; bin/elasticsearch-plugin install -s file:///home/hadoop/elasticsearch5/binary/mapper-murmur3-5.2.0.zip
