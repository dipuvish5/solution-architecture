# Use an official Java runtime as a parent image
FROM openjdk:21

# Set the working directory inside the container
WORKDIR /app

# Add the application JAR file into the container
COPY target/complete_architecture-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port your app runs on
EXPOSE 80

# Run the app
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

