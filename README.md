#tomcat8.5_dockerfile#

tomcat_dockerfile,version :8.5,可以生成日志,自定义用户名 密码 ，远程访问
---

#编译命令#
```
docker build -f dockerfile -t zyj/tomcat .
```
---
#运行命令#

```
docker run -d -p 8080:8080 --name tomcat8
-v /opt/docker-tomcat/logs/:/opt/tomcat/logs/ -v /opt/docker-tomcat/webapps/:/opt/tomcat/webapps/ -v /opt/docker-tomcat/context.xml:/opt/tomcat/webapps/manager/META-INF/context.xml -v /opt/docker-tomcat/tomcat-users.xml:/opt/tomcat/conf/tomcat-users.xml --privileged=true zyj/tomcat
```

######-v 映射本地路径 :容器路径 ######

---

#默认用户名 密码:#

user :admin
password: admin

---