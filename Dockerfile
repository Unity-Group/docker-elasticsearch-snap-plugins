ARG ES_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:${ES_VERSION}
RUN bin/elasticsearch-plugin install --batch repository-azure repository-s3 repository-gcs
