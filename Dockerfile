# Dockerizing elasticsearch images for eXo platform
# 
# Build:    docker build -t exoplatform/elasticsearch .
#
# Run:      docker run -ti exoplatform/elasticsearch
FROM docker.elastic.co/elasticsearch/elasticsearch:8.1.1

# Enforce underlying system package update
USER elasticsearch

# Configure Elasticsearch for eXo Platform
RUN cd /usr/share/elasticsearch \
    && bin/elasticsearch-plugin install -b -s ingest-attachment
COPY jvm.options /usr/share/elasticsearch/config/