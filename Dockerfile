FROM jenkins/jenkins:alpine3.20-jdk21
USER root
RUN apk update && apk add --no-cache maven
USER jenkins
VOLUME /var/jenkins_home
EXPOSE 8080
