# docker-atlas
docker-atlas

beeline -u jdbc:hive2://localhost:10000

curl 'http://192.168.31.11:8983/solr/admin/collections?action=CREATE&name=vertex_index&numShards=1'
curl 'http://192.168.31.11:8983/solr/admin/collections?action=CREATE&name=edge_index&numShards=1'
curl 'http://192.168.31.11:8983/solr/admin/collections?action=CREATE&name=fulltext_index&numShards=1'
