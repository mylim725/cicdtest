FROM tomcat:8.5.46-jdk8-openjdk
EXPOSE 80
COPY target/shopping-v1.0.war /usr/local/tomcat/webapps/shopping-v1.0.war
CMD ["/usr/local/tomcat/bin/startup.sh"]
