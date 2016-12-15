FROM mkoch/base:latest
MAINTAINER Michael Koch <michael.koch@enough.de>

ENV DEBIAN_FRONTEND=noninteractive

RUN \
	echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu vivid main" | tee /etc/apt/sources.list.d/java.list && \
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
	apt-get update && \
	apt-get install -y --no-install-recommends oracle-java8-installer && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

