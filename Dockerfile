FROM openjdk:8
EXPOSE 8080
ADD target/DemoProject-0.0.1-SNAPSHOT.jar DemoProject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/DemoProject-0.0.1-SNAPSHOT.jar"]
