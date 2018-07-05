# Elasticsearch for eXo platform

This is a prepackaged image of ElasticSearch ready to use with eXo Platform version >= 4.4.0.

It is based on the official ElasticSearch image.

## Compatibility Matrix

| eXo Platform version | Image Version | Elasticsearch version |
| -------------------- | ------------- | --------------------- |
| >= 4.4.0             | 0.4           | 2.3.2                 |
| >= 5.0.0             | 1.1.0         | 5.6.3                 |
| >= 5.1.0             | 1.2.0         | 5.9.6                 |

## Usage

This image can be use as the official ElasticSearch image.

see https://hub.docker.com/_/elasticsearch/ for version 0.3 and lower.

see https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html for 1.0 and greater

## Basic usage

```
docker run -d --name exo_elasticsearch -e ES_JAVA_OPTS="-Xms8g -Xmx8g" -v <my data path>:/usr/share/elasticsearch/data -p 9200:9200 exoplatform/elasticsearch
```

WARNING: Don't expose publicly your elasticsearch without securing it

## eXo Platform instance configuration

The way to configure you eXo Platform instance is explained in details on this [eXo documentation section](https://www.exoplatform.com/docs/public/topic/PLF44/PLFAdminGuide.Configuration.ElasticSearch.html)
