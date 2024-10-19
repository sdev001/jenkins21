FROM jenkins/jenkins:slim-jdk21
USER root
RUN apt-get update && apt-get install -y maven
USER jenkins
VOLUME /var/jenkins_home
