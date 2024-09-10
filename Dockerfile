FROM tomcat:8.5-jdk8
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war