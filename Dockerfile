FROM tomcat:8.0.20-jre8
# Dummy text to test 
#COPY target/java-web-app-docker*.war /usr/local/tomcat/webapps/java-web-app-docker.war
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war

