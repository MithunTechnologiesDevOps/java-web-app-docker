FROM alpine/git as repo
WORKDIR /app
RUN git clone https://github.com/Devops-vinay717/java-web-app-docker.git
FROM maven:3.5-jdk-8-alpine as build
WORKDIR /app
COPY --from=repo /app/java-web-app-docker /app
RUN mvn package
FROM tomcat:8.0.20-jre8
COPY --from=build /app/target/java-web-app*.war /usr/local/tomcat/webapps/java-web-app-docker.war
