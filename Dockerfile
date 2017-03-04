FROM lightinglyg/alpine-base:3.4

MAINTAINER Lighting <liuyg@liuyingguang.cn>

RUN mkdir -p /usr/local/src \
  	&& cd /usr/local/src \
	&& curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.4.2.tgz \
	&& tar -zxvf mongodb-linux-x86_64-3.4.2.tgz \
	&& mkdir -p mongodb \
	&& cp -R -n mongodb-linux-x86_64-3.4.2/ mongodb \
	&& export PATH=/usr/local/src/mongodb/bin:$PATH

EXPOSE 27017 
CMD [ "mongod" ]
