FROM frolvlad/alpine-oraclejdk8:slim
MAINTAINER Hieu Nguyen <hieu.nguyen@ssosol.com>

# Expose web port
EXPOSE 8080

# Tomcat Version
ENV TOMCAT_VERSION_MAJOR=8 \
    TOMCAT_VERSION_FULL=8.0.23 \
    CATALINA_HOME=/tomcat \
    PATH=/tomcat/bin:$PATH

# Download and install
RUN wget "http://archive.apache.org/dist/tomcat/tomcat-${TOMCAT_VERSION_MAJOR}/v${TOMCAT_VERSION_FULL}/bin/apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz" &&\
    tar -xzvf apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz &&\ 
    rm -f apache-tomcat*.gz &&\
    mv /apache-tomcat* /tomcat &&\
    rm -rf /tomcat/webapps/examples /tomcat/webapps/docs

ENTRYPOINT ["catalina.sh"]
CMD ["run"]
