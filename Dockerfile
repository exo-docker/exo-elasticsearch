# Dockerizing elasticsearch images for eXo platform
# 
# Build:    docker build -t exoplatform/elasticsearch .
#
# Run:      docker run -ti exoplatform/elasticsearch
FROM docker.elastic.co/elasticsearch/elasticsearch:7.17.6

# Enforce underlying system package update
USER root
RUN apt-get update -y && apt-get full-upgrade -y && apt-get clean all -y
USER elasticsearch

# Configure Elasticsearch for eXo Platform
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin install -b -s ingest-attachment
COPY jvm.options /usr/share/elasticsearch/config/