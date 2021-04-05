FROM openjdk:11-jre-slim
EXPOSE 8090
WORKDIR /app
COPY target/ussd-backend-0.0.1-SNAPSHOT.jar .
ENTRYPOINT [ "java", "-jar", "ussd-backend-0.0.1-SNAPSHOT.jar" ]