FROM docker.qjdchina.com/qjd/tomcat7:latest
MAINTAINER "WangXiangYang <wangxiangyang@qjdchina.com>"
COPY ./sessions-tomcat-redis-jars/ /usr/local/tomcat/lib/
COPY context.xml /usr/local/tomcat/conf/
COPY autoconfig /usr/local/bin/
COPY autoexpand /usr/local/bin/
COPY changefile.sh /usr/local/bin/
RUN   mkdir -p /usr/src/autoconfig
