tomcat8.5_dockerfile
---

tomcat_dockerfile,version :8.5,可以生成日志,自定义用户名 密码 ，远程访问
---

<<<<<<< HEAD
__��������__
```
docker build -f dockerfile -t zyj/tomcat .
```

__��������__
=======
__编译命令__
```
docker build -f dockerfile -t zyj/tomcat .
```
---
__运行命令__
>>>>>>> 52eaad4780bd257e8fe5186437221d2fe5e450b8

```
docker run -d -p 8080:8080 --name tomcat8 -v /opt/docker-tomcat/logs/:/opt/tomcat/logs/ -v /opt/docker-tomcat/webapps/:/opt/tomcat/webapps/ -v /opt/docker-tomcat/context.xml:/opt/tomcat/webapps/manager/META-INF/context.xml -v /opt/docker-tomcat/tomcat-users.xml:/opt/tomcat/conf/tomcat-users.xml --privileged=true zyj/tomcat
```

<<<<<<< HEAD
_-v ӳ�䱾��·�� :����·��_

---

__Ĭ���û��� ����__
=======
_-v 映射本地路径 :容器路径_

---

__默认用户名 密码__
>>>>>>> 52eaad4780bd257e8fe5186437221d2fe5e450b8

user :admin
password: admin

---
