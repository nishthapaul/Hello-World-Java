# Use a base image with Java installed
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the Java file from the repository to the container
COPY HelloWorld.java .

# Compile the Java file
RUN javac HelloWorld.java

# Define the command to run your Java application
CMD ["java", "HelloWorld"]
