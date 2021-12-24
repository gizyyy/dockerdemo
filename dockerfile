FROM openjdk:11
COPY /build/libs/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]


#Multi Staged version
#FROM gradle:latest as builder
#ENV APP_HOME=/usr/app/
#WORKDIR $APP_HOME
#COPY build.gradle settings.gradle $APP_HOME
  
#COPY gradle $APP_HOME/gradle
#COPY --chown=gradle:gradle . /home/gradle/src
#USER root
#RUN chown -R gradle /home/gradle/src
    
#RUN gradle build || return 0
#COPY . .
#RUN gradle clean build



#FROM openjdk:11
#ENV APP_HOME=/usr/app/
#WORKDIR $APP_HOME
#ENV ARTIFACT_NAME=dockerdemo-0.0.1-SNAPSHOT.jar
#COPY --from=builder $APP_HOME/build/libs/$ARTIFACT_NAME .
#EXPOSE 8080
#ENTRYPOINT exec java -jar ${ARTIFACT_NAME}





#gradlew build
#docker build -t dockerdemo:latest .
#docker container run -d --name dockerdemo -p 8080:8080 dockerdemo:latest
#http://localhost:8080/welcome


