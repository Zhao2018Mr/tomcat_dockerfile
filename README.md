#tomcat8.5_dockerfile#

tomcat_dockerfile,version :8.5,����������־,�Զ����û��� ���� ��Զ�̷���
---

#��������#
```
docker build -f dockerfile -t zyj/tomcat .
```
---
#��������#

```
docker run -d -p 8080:8080 --name tomcat8
-v /opt/docker-tomcat/logs/:/opt/tomcat/logs/ -v /opt/docker-tomcat/webapps/:/opt/tomcat/webapps/ -v /opt/docker-tomcat/context.xml:/opt/tomcat/webapps/manager/META-INF/context.xml -v /opt/docker-tomcat/tomcat-users.xml:/opt/tomcat/conf/tomcat-users.xml --privileged=true zyj/tomcat
```

######-v ӳ�䱾��·�� :����·�� ######

---

#Ĭ���û��� ����:#

user :admin
password: admin

---