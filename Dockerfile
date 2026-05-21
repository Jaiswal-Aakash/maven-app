FROM maven:3.9-eclipse-temurin-17
WORKDIR /app

COPY . .

RUN mvn clean package

CMD ["java", "-cp", "target/myapp-1.0-SNAPSHOT.jar", "com.example.App"]
