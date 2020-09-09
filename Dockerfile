FROM maven:3-jdk-8 as build

WORKDIR /usr/local

COPY pom.xml /usr/local
COPY src /usr/local

RUN mvn package

CMD ["/bin/sh"]
