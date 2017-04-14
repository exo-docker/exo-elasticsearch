FROM docker.elastic.co/elasticsearch/elasticsearch:5.3.0

ENV xpack.security.enabled=false

RUN cd /usr/share/elasticsearch \
	&& bin/elasticsearch-plugin install -b -s ingest-attachment \
    && bin/elasticsearch-plugin install -b -s mapper-attachments
