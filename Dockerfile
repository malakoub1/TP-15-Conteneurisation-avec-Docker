FROM eclipse-temurin:21-jdk-jammy

WORKDIR /opt/app

ARG JAR_FILE=target/springdocker-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} application.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "application.jar"]