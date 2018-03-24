FROM maven:3.5.3-jdk-8-alpine
ARG GITVERSION_SEMVER=0.1.0-unknown
RUN mkdir -p /usr/app
WORKDIR /usr/app
ADD . ./
RUN mvn versions:set -DnewVersion=${GITVERSION_SEMVER} &&\
 mvn versions:commit &&\
 mvn package