# Use MuleSoft runtime base image
FROM mulesoft/mule:4.4.0-java11

# Set working directory
WORKDIR /opt/mule/apps

# Copy the built JAR file to the container
COPY target/sample-mulesoft-project-1.0.0-SNAPSHOT.jar .

# Expose the HTTP listener port
EXPOSE 8081

# Set environment variables
ENV MULE_HOME=/opt/mule
ENV PATH=$MULE_HOME/bin:$PATH

# Run the Mule application
CMD ["mule", "-app", "sample-mulesoft-project-1.0.0-SNAPSHOT.jar"]