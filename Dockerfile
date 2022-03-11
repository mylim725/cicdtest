FROM openjdk:8-jre-alpine
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
COPY target/shopping-v1.0.war /usr/local/tomcat/webapps/shopping-v1.0.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
