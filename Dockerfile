##################
# File managed by puppet, don't edit
##################

FROM elasticsearch:1.7.2

RUN cd /usr/share/elasticsearch \
	&& bin/plugin install elasticsearch/elasticsearch-mapper-attachments/2.7.1
  
