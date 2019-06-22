FROM openjdk:8-jre-alpine

EXPOSE 7000
ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/javalin/service.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
# ADD target/lib /usr/share/myservice/lib

# Add the service itself
ARG JAR_FILE
RUN echo "hello world"
RUN echo "JAR_FILE ${JAR_FILE}"
ADD target/${JAR_FILE} /usr/share/javalin/service.jar