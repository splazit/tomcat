Tomcat based on OracleJDK and Alpine
====================================

This image is based on [Oracle JDK8](http://www.oracle.com/technetwork/java/javase/overview/index.html) 
and [Alpine Linux](http://alpinelinux.org).

JDK bundle contains lots of unnecessary for Docker image stuff, so it was cleaned up by [frolvlad](https://registry.hub.docker.com/u/frolvlad/alpine-oraclejdk8/). 

The examples webapps and docs have been cleaned up.

Usage Example
-------------
Run in an interactive mode and watch the log
```bash
$ docker run -it --rm splazit/tomcat
```
Run in a daemon mode, expose port 8080 to host and mount ***webapps*** and ***logs*** dir to the host
```bash
$ docker run -d -p 8080:8080 -v [host_path_webapps_dir]:/tomcat/webapps -v [host_path_logs_dir]:/tomcat/logs splazit/tomcat
```
Once you have run the above command, you should be able to connect to your [localhost](http://localhost:8080/)
