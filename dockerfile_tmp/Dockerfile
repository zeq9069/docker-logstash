# this is a custom image (logstash,redis,elasticsearch,kibana)

FROM ubuntu:latest
MAINTAINER kyrin
RUN apt-get update


RUN apt-get install -y wget openjdk-7-jdk

RUN apt-get install -y curl

RUN apt-get install make

RUN apt-get install gcc -y


RUN (mkdir /root/soft && cd /root/soft && curl -O https://download.elasticsearch.org/logstash/logstash/logstash-1.5.0.tar.gz && tar zxvf logstash-1.5.0.tar.gz && rm logstash-1.5.0.tar.gz)

ADD test.conf  /root/soft/logstash-1.5.0/

RUN (cd  /root/soft &&  curl -O https://download.elastic.co/kibana/kibana/kibana-4.0.3-linux-x64.tar.gz  && tar zxvf kibana-4.0.3-linux-x64.tar.gz && rm kibana-4.0.3-linux-x64.tar.gz)

RUN (cd /root/soft && curl -O http://download.redis.io/releases/redis-3.0.2.tar.gz && tar zxvf redis-3.0.2.tar.gz && rm redis-3.0.2.tar.gz && cd /root/soft/redis-3.0.2/ && make MALLOC=libc && echo "daemonize yes" >> redis.conf)




ADD run.sh /root/soft/

RUN chmod +x /root/soft/run.sh



EXPOSE 5601
EXPOSE 6379
EXPOSE 9200
 


CMD ["/root/soft/run.sh"]

