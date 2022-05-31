ARG ES_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:${ES_VERSION}
RUN sudo bin/elasticsearch-plugin install repository-azure repository-s3 repository-gcs
