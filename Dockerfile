FROM tomcat:7-jdk8-corretto
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app-docker.war
