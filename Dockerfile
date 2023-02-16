## Use base image with preinstalled JDK 11
#FROM openjdk:11
#
#RUN apt-get -y update && apt-get install -y maven
#
## Add src folder to to the image
#ADD . /src
#
## Set src directory as working dir
#WORKDIR /src
#
## Run Maven build command
#RUN ["mvn", "package"]
#
## Application will use 8081 port by default
#EXPOSE 8081
#
## Run executable container
#ENTRYPOINT ["java", "-jar", "target/e-shop-spring-boot-data-rest-h2-reactjs-docker-2.5.2.jar"]

FROM maven:3.8.6-jdk-11 as MAVEN_BUILD

ADD ./pom.xml pom.xml
ADD ./src src/

RUN mvn clean package

FROM openjdk:11

COPY --from=MAVEN_BUILD /target/e-shop-spring-boot-data-rest-h2-reactjs-docker-2.5.2.jar /e-shop.jar

ENTRYPOINT ["java","-jar","e-shop.jar"]