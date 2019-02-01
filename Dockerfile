FROM openjdk:8-alpine3.8
VOLUME /tmp
RUN apk add --no-cache tzdata
#ARG JAR_FILE
#COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/app.jar"]
