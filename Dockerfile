FROM bellsoft/liberica-openjdk-alpine:17

CMD {"./gradlew", "clean", "build"}

ARG JAR_FILE=bild/libs/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]