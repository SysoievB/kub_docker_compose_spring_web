#Start with a base image containing Java runtime
FROM openjdk:21-jdk-slim

# Add the application's jar to the image
COPY target/kub_docker_compose_spring_web-0.0.1-SNAPSHOT.jar kub_docker_compose_spring_web-0.0.1-SNAPSHOT.jar

# execute the application
ENTRYPOINT ["java", "-jar", "kub_docker_compose_spring_web-0.0.1-SNAPSHOT.jar"]

# Expose the application port
EXPOSE 8080