# Use an OpenJDK 17 slim image as the base image
#FROM openjdk:17-slim

# Copy the built jar from the target directory into the container
#COPY target/demo-1.0.0.jar /app/demo.jar

# Run the Spring Boot application (which listens on port 8080)
#ENTRYPOINT ["java", "-jar", "/app/demo.jar"]

FROM openjdk:17-slim
WORKDIR /app
COPY target/demo-1.0.0.jar /app/demo.jar
ENTRYPOINT ["java", "-jar", "/app/demo.jar"]