# Elasticsearch for eXo platform

This is a prepackaged image of ElasticSearch ready to use with eXo Platform version >= 4.4.0.

It is based on the official ElasticSearch image.

## Compatibility Matrix

| eXo Platform version | Image Version
|:-:|:-:|
| >= 4.4.0 | 0.3

## Usage

[This image can be use as the official ElasticSearch image](https://hub.docker.com/_/elasticsearch/)

## Basic usage
```
docker run -d --name exo_elasticsearch -v <my data path>:/usr/share/elasticsearch/data -p 9200:9200 exoplatform/elasticsearch
```

WARNING: Don't expose publicly your elasticsearch without securing it

## eXo Platform instance configuration

The way to configure you eXo Platform instance is explained in details on this [eXo documentation section](https://www.exoplatform.com/docs/public/topic/PLF44/PLFAdminGuide.Configuration.ElasticSearch.html)
