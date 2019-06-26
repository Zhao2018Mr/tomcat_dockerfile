tomcat8.5_dockerfile
---

tomcat_dockerfile,version :8.5,å¯ä»¥ç”Ÿæˆæ—¥å¿—,è‡ªå®šä¹‰ç”¨æˆ·å å¯†ç  ï¼Œè¿œç¨‹è®¿é—®
---

<<<<<<< HEAD
__±àÒëÃüÁî__
```
docker build -f dockerfile -t zyj/tomcat .
```

__ÔËĞĞÃüÁî__
=======
__ç¼–è¯‘å‘½ä»¤__
```
docker build -f dockerfile -t zyj/tomcat .
```
---
__è¿è¡Œå‘½ä»¤__
>>>>>>> 52eaad4780bd257e8fe5186437221d2fe5e450b8

```
docker run -d -p 8080:8080 --name tomcat8 -v /opt/docker-tomcat/logs/:/opt/tomcat/logs/ -v /opt/docker-tomcat/webapps/:/opt/tomcat/webapps/ -v /opt/docker-tomcat/context.xml:/opt/tomcat/webapps/manager/META-INF/context.xml -v /opt/docker-tomcat/tomcat-users.xml:/opt/tomcat/conf/tomcat-users.xml --privileged=true zyj/tomcat
```

<<<<<<< HEAD
_-v Ó³Éä±¾µØÂ·¾¶ :ÈİÆ÷Â·¾¶_

---

__Ä¬ÈÏÓÃ»§Ãû ÃÜÂë__
=======
_-v æ˜ å°„æœ¬åœ°è·¯å¾„ :å®¹å™¨è·¯å¾„_

---

__é»˜è®¤ç”¨æˆ·å å¯†ç __
>>>>>>> 52eaad4780bd257e8fe5186437221d2fe5e450b8

user :admin
password: admin

---
