FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/spring-mongo-crud-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]