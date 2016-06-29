##################
# File managed by puppet, don't edit
##################

FROM elasticsearch:2.3.2

RUN cd /usr/share/elasticsearch \
	&& bin/plugin install mapper-attachments \
	&& bin/plugin install delete-by-query \
	&& bin/plugin install cloud-aws
  
