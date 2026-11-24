#for lab 10, to compiles the Spring Boot application 
#into a JAR file and creates an environment where it can run inside Docker


# build application
FROM gradle:jdk21-alpine AS build
WORKDIR /workspace
COPY . .
RUN chmod +x gradlew
RUN sed -i 's/\r$//' gradlew
RUN ./gradlew bootJar --no-daemon

# setup image
FROM eclipse-temurin:21-jdk-alpine
EXPOSE 8080
RUN mkdir /app
COPY --from=build /workspace/build/libs/*.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
