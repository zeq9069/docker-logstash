#!/bin/bash

cd /root/soft




redis-3.0.2/src/redis-server redis-3.0.2/redis.conf

logstash-1.5.0/bin/logstash -f logstash-1.5.0/test.conf &

#最后一个不要使用守护线程的形式，否则docker容器自动退出
kibana-4.0.3-linux-x64/bin/kibana  




