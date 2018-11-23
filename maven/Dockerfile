FROM maven:3.5.3-jdk-8-alpine
ARG GITVERSION_SEMVER=0.1.0-unknown
RUN mkdir -p /usr/app
WORKDIR /usr/app
ADD . ./
RUN mvn -Drevision=${GITVERSION_SEMVER} package