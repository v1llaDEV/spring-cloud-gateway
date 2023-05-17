FROM openjdk:11
EXPOSE 8100:8100
COPY target/zuul-gateway.jar /usr/local/service/zuul-gateway.jar
ENTRYPOINT ["java","-jar","/usr/local/service/zuul-gateway.jar"]