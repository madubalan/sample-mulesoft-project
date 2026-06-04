# Sample MuleSoft Project

A simple sample MuleSoft integration project that demonstrates basic API creation and message processing.

## Project Overview

This project provides a simple MuleSoft integration with the following capabilities:

- **HTTP Listener**: Exposes HTTP endpoints
- **Simple GET API**: Returns a hello message
- **Echo API**: Accepts POST requests and returns the payload
- **User API**: Retrieves user information by ID

## Prerequisites

- Java 11 or higher
- Apache Maven 3.6.0 or higher
- MuleSoft Anypoint Studio (recommended for development)
- Mule Runtime 4.4.0 or higher

## Project Structure

```
sample-mulesoft-project/
├── pom.xml                          # Maven configuration file
├── src/
│   ├── main/
│   │   ├── mule/
│   │   │   └── sample-flow.xml      # Mule flows definition
│   │   └── resources/
│   │       ├── application.properties  # Application configuration
│   │       └── log4j2.xml             # Logging configuration
│   └── test/
│       └── resources/                # Test resources
├── README.md                        # This file
└── .gitignore                       # Git ignore file
```

## Building the Project

### Using Maven

```bash
# Build the project
mvn clean install

# Package as a mule application
mvn clean package
```

## Running the Project

### Using Anypoint Studio

1. Import the project into Anypoint Studio
2. Right-click on the project → Run As → Mule Application

### Using Command Line

```bash
# Run the application
mule -M -app=target/sample-mulesoft-project-1.0.0-SNAPSHOT.jar
```

### Using Docker

```bash
# Build Docker image
docker build -t sample-mulesoft-app .

# Run container
docker run -p 8081:8081 sample-mulesoft-app
```

## API Endpoints

Once the application is running, you can access the following endpoints:

### 1. Hello Endpoint

**Request:**
```bash
curl -X GET http://localhost:8081/hello
```

**Response:**
```json
{
  "message": "Hello World",
  "timestamp": "2026-06-04T10:30:45.123Z"
}
```

### 2. Echo Endpoint

**Request:**
```bash
curl -X POST http://localhost:8081/echo \
  -H "Content-Type: application/json" \
  -d '{"message": "Hello MuleSoft"}'
```

**Response:**
```json
{
  "echo": {
    "message": "Hello MuleSoft"
  },
  "receivedAt": "2026-06-04T10:30:45.123Z"
}
```

### 3. Get User Endpoint

**Request:**
```bash
curl -X GET http://localhost:8081/users/123
```

**Response:**
```json
{
  "id": "123",
  "name": "John Doe",
  "email": "john@example.com",
  "createdAt": "2026-06-04T10:30:45.123Z"
}
```

## Configuration

Edit `src/main/resources/application.properties` to configure:

- HTTP listener host and port
- Logging level
- API metadata

## Logging

The project uses Log4j2 for logging. Configure logging in `src/main/resources/log4j2.xml`.

## Next Steps

To extend this project:

1. **Add Database Connectivity**: Integrate with databases using database connectors
2. **Add Message Queues**: Use JMS or AMQP connectors for async messaging
3. **Add Error Handling**: Implement error handlers for exception management
4. **Add Transformations**: Use DataWeave for complex data transformations
5. **Add Security**: Implement OAuth2, JWT, or other authentication mechanisms
6. **Add Testing**: Create unit and integration tests

## Resources

- [MuleSoft Documentation](https://docs.mulesoft.com/)
- [Anypoint Platform](https://www.mulesoft.com/platform/anypoint)
- [MuleSoft Community](https://community.mulesoft.com/)

## License

MIT License - Feel free to use this project as a template for your own MuleSoft applications.

## Support

For issues or questions, please refer to the MuleSoft documentation or community forums.