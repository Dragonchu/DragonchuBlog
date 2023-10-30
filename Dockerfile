FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
RUN file="$(ls)" && echo $file
COPY target/DragonchuBlog-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]