FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.3

ENV ELASTICSEARCH_MAJOR 5.6
ENV ELASTICSEARCH_VERSION 5.6.3
ENV xpack.security.enabled=false
ENV PATH /usr/share/elasticsearch/bin:$PATH
ENV ES_GROUP 0
USER root

WORKDIR /usr/share/elasticsearch
COPY config ./config
COPY docker-entrypoint.sh /
COPY jvm.options /usr/share/elasticsearch/config/

EXPOSE 9200 9300

RUN mkdir -p /usr/share/elasticsearch/data && \
    chown -R elasticsearch:${ES_GROUP} /usr/share/elasticsearch/data
    
RUN mkdir -p /usr/share/elasticsearch/logs && \
    chown -R elasticsearch:${ES_GROUP} /usr/share/elasticsearch/logs
    
RUN mkdir -p /usr/share/elasticsearch/config && \
    chown -R elasticsearch:${ES_GROUP} /usr/share/elasticsearch/config
    
RUN mkdir -p /usr/share/elasticsearch/config/scripts && \
    chown -R elasticsearch:${ES_GROUP} /usr/share/elasticsearch/config/scripts

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -b -s ingest-attachment && \
    /usr/share/elasticsearch/bin/elasticsearch-plugin install -b -s mapper-attachments
    
RUN chmod -R og+w /usr/share/elasticsearch && \
    chmod 755 /usr/share/elasticsearch/config/docker-entrypoint.sh

USER 1000

ENTRYPOINT ["/usr/share/elasticsearch/config/docker-entrypoint.sh"]
CMD ["elasticsearch"]
