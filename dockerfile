FROM openjdk:11
COPY /build/libs/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]


#gradlew build
#docker build -t dockerdemo:latest .
#docker container run -d --name dockerdemo -p 8080:8080 dockerdemo:latest
#http://localhost:8080/welcome