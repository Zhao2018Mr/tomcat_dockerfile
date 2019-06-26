FROM openjdk:8-jre

MAINTAINER zyj

ENV JAVA_HOME /usr/local/openjdk-8
ENV CATALINA_HOME /opt/tomcat 
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin:$CATALINA_HOME/scripts

#时区 
RUN echo "Asia/Shanghai" > /etc/timezone

RUN mv /etc/localtime /etc/localtime_bak

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#TOMCAT 
ENV TOMCAT_MAJOR 8
ENV TOMCAT_VERSION 8.5.35

RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz && \
 tar -zxvf apache-tomcat-8.5.41.tar.gz && \
 rm apache-tomcat*.tar.gz && \
 mv apache-tomcat* ${CATALINA_HOME} && \
 chmod +x ${CATALINA_HOME}/bin/*sh && \
 chmod 777 ${CATALINA_HOME}/logs/ && \
 chmod 777 ${CATALINA_HOME}/webapps/ 

#设置用户名密码 admin 
ADD  tomcat-users.xml /opt/tomcat/conf/

#远程访问 
ADD  context.xml /opt/tomcat/webapps/manager/META-INF/


ENV LANG zh_CN.UTF-8


EXPOSE 8080


# Launch Tomcat

WORKDIR /opt/tomcat/bin
CMD ["catalina.sh","run"]