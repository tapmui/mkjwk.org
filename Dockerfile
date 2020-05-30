FROM maven:3-jdk-8 AS MAVEN_TOOL_CHAIN

RUN mkdir /build
WORKDIR /build
ADD . /build
RUN mvn  -Dmaven.test.skip=true -Dmaven.javadoc.skip=true package
 
FROM openjdk:12-alpine

COPY --from=MAVEN_TOOL_CHAIN /build/target/ROOT.war /app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-DskipTests", "-jar", "/app.jar"]
