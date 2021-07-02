#!/bin/bash
until $(curl --output /dev/null --silent --head --fail http://solr:8983/solr); do echo "Waiting for SOLR" && sleep 5; done

curl 'http://solr:8983/solr/admin/collections?action=CREATE&name=vertex_index&numShards=1'
curl 'http://solr:8983/solr/admin/collections?action=CREATE&name=edge_index&numShards=1'
curl 'http://solr:8983/solr/admin/collections?action=CREATE&name=fulltext_index&numShards=1'

/opt/apache/atlas/bin/atlas_start.py
tail -fF /opt/apache/atlas/logs/atlas*.out
