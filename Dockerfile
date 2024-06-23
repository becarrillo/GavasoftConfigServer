FROM openjdk:17-jdk-slim
ARG CONFIG_SERVER_JAR_FILE=config-server/config-server-0.0.1-SNAPSHOT.jar
COPY ${CONFIG_SERVER_JAR_FILE} config-server.jar

EXPOSE 8085
ENTRYPOINT ["java", "-jar", "config-server.jar"]