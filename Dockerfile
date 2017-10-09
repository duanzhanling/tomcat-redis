FROM hub.c.163.com/library/tomcat:latest
MAINTAINER "ilanni <ilanni@ilanni.com>"
COPY ./sessions-tomcat-redis-jars/ /usr/local/tomcat/lib/
COPY context.xml /usr/local/tomcat/conf/
