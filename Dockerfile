ARG ES_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:${ES_VERSION}
ARG ES_VERSION
RUN if [[ $ES_VERSION == 7.* ]] ; then bin/elasticsearch-plugin install --batch repository-azure repository-s3 repository-gcs ; else bin/elasticsearch-plugin install --batch repository-s3 ; fi
