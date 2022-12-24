FROM tomcat:8-jdk8-corretto
# Dummy text to test 
#COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
