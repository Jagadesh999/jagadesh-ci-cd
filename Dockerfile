# Base Image
FROM openjdk:11-jdk-slim

# Copy App Files
COPY target/myapp.jar /app/myapp.jar

# Set Work Directory
WORKDIR /app

# Run Application
CMD ["java", "-jar", "myapp.jar"]

