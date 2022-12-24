FROM tomcat:8-jdk8-corretto
# Dummy text to test 
#COPY  /usr/local/tomcat/bin/bootstrap.jar:/usr/local/tomcat/bin/tomcat-juli.jar
COPY target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app.war
