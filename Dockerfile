FROM openjdk:8-alpine

MAINTAINER mrfroop <fredrik@jambren.com>

ENV GRADLE_VERSION=3.3 
ENV GRADLE_HOME=/opt/gradle

WORKDIR /tmp

RUN apk --no-cache add openssl \
    && wget https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
    && mkdir /opt \
    && unzip gradle-${GRADLE_VERSION}-bin.zip -d /opt \
    && ln -s /opt/gradle-${GRADLE_VERSION} /opt/gradle \
    && rm -f gradle-${GRADLE_VERSION}-bin.zip

ENV PATH $PATH:/opt/gradle/bin/gradle