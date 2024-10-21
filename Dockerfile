FROM maven:3.9.9-eclipse-temurin-8-focal as builder

FROM jenkins/jenkins:alpine3.20-jdk21
USER root
COPY --from=builder /usr/share/maven /usr/share/maven
COPY --from=builder /usr/bin/mvn /usr/bin/mvn
USER jenkins
VOLUME /var/jenkins_home
EXPOSE 8080
