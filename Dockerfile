FROM eclipse-temurin:17-jdk-alpine
RUN mvn clean package
COPY target/DragonchuBlog-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]