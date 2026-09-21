FROM eclipse-temurin:17-jre

WORKDIR /app

COPY target/java-jenkins-maven-docker-demo-1.0-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]
