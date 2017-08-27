FROM mkoch/base:latest
MAINTAINER Michael Koch <michael.koch@enough.de>

ENV DEBIAN_FRONTEND=noninteractive

RUN \
	apt-get update && \
	apt-get install -y --no-install-recommends openjdk-8-jdk && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

