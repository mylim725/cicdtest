FROM tomcat:8.5.46-jdk8-openjdk

RUN rm -Rf /usr/local/tomcat/webapps/shopping-v1.0 ## tomcat root 경로 삭제
RUN rm -Rf /usr/local/tomcat/webapps/shopping-v1.0.war ## tomcat root 경로 삭제
COPY target/shopping-v1.0.war /usr/local/tomcat/webapps/shopping-v1.0.war