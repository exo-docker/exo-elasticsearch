# Elasticsearch for eXo platform

This is a prepackaged image of ElasticSearch ready to use with eXo Platform version >= 4.4.

It is based on the official ElasticSearch image.

## Compatibility Matrix

| eXo Platform version | Image Version | Elasticsearch version |
|-----------------|---------------|-----------------------|
| >= 7.0.0        | 2.1.1         | 8.14.3                |
| >= 6.5.0        | 2.1.0         | 8.7.1                 |
| >= 6.3.0        | 2.0.3         | 7.17.1                |
| >= 6.2.0        | 2.0.2         | 7.13.2                |
| >= 5.3.0        | 1.2.3         | 5.6.16                |
| >= 5.2.0        | 1.2.1         | 5.6.11                |
| >= 5.1.0        | 1.2.0         | 5.6.9                 |
| >= 5.0.0        | 1.1.0         | 5.6.3                 |
| >= 4.4.0        | 0.4           | 2.3.2                 |

## Usage

This image usage is the same as the official ElasticSearch image.

see https://hub.docker.com/_/elasticsearch/ 

see https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html for the related Elasticsearch version

## Basic usage

```bash
docker run -d --name exo_elasticsearch -e ES_JAVA_OPTS="-Xms8g -Xmx8g" -e node.name=es-1 -e cluster.name=es -e cluster.initial_master_nodes=es-1 -e xpack.security.enabled=false -e network.host=_site_ -v <my data path>:/usr/share/elasticsearch/data -p 9200:9200 exoplatform/elasticsearch
```

WARNING: Don't expose publicly your elasticsearch without securing it

## Basic docker compose usage

This is a very basic docker compose file of a single node cluster, for tests only, without security, exposing port 9200.

WARNING: Don't expose publicly your elasticsearch without securing it

```
version: "3.3"
services:
  es:
    image: exoplatform/elasticsearch:latest
    container_name: es
    hostname: es
    restart: on-failure
    environment:
      - node.name=es-1
      - cluster.name=es
      - cluster.initial_master_nodes=es-1
      - ES_JAVA_OPTS=-Xms8g -Xmx8g
      - xpack.security.enabled=false
      - network.host=_site_
    volumes:
      - ./search:/usr/share/elasticsearch/data:rw
    ports:
      - "9200:9200"
```

## eXo Platform instance configuration

The way to configure you eXo Platform instance is explained in details on this [eXo documentation section](https://docs.exoplatform.org/en/latest/Configuration.html#elasticsearch-configuration)
