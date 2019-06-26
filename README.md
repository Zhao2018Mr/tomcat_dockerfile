tomcat8.5_dockerfile
---

tomcat_dockerfile,version :8.5,可以生成日志,自定义用户名 密码 ，远程访问
---

__编译命令__
```
docker build -f dockerfile -t zyj/tomcat .
```

---
__运行命令__

```
docker run -d -p 8080:8080 --name tomcat8 -v /opt/docker-tomcat/logs/:/opt/tomcat/logs/ -v /opt/docker-tomcat/webapps/:/opt/tomcat/webapps/ -v /opt/docker-tomcat/context.xml:/opt/tomcat/webapps/manager/META-INF/context.xml -v /opt/docker-tomcat/tomcat-users.xml:/opt/tomcat/conf/tomcat-users.xml --privileged=true zyj/tomcat
```

_-v 映射本地路径 :容器路径_

---

__默认用户名 密码__

user :admin
password: admin

---
