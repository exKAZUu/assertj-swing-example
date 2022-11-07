FROM ubuntu:jammy
WORKDIR /app

ENV TZ Asia/Tokyo

COPY src/ ./src
COPY pom.xml ./

RUN apt-get -qq update \
    && apt-get install -y maven openjdk-18-jdk \
    && apt-get install -y xvfb \
    && apt-get clean

# xvfb-run mvn test