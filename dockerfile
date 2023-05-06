FROM openjdk:17.0.2-slim-buster
EXPOSE 8100:8100
COPY target/zuul-gateway.jar /usr/local/service/zuul-gateway.jar
ENTRYPOINT ["java","-jar","/usr/local/service/zuul-gateway.jar"]