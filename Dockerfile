ARG jdkVersion=11

FROM openjdk:${jdkVersion}
LABEL maintainer="amariiitb@gmail.com"

ARG artifactPath=target
COPY ${artifactPath}/*.jar /opt/app/app.jar
EXPOSE 8080

# We will run spring boot app in docker container using this configuration
ENTRYPOINT ["java", "-jar", "/opt/app/app.jar"]