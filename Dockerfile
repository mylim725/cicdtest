FROM tomcat:8.5-jre8-temurin
COPY target/shopping-v1.0.war /usr/local/tomcat/webapps/shopping-v1.0.war
CMD ["/usr/local/tomcat/bin/startup.sh"]
