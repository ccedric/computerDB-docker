FROM jenkins:latest

ENV DEBIAN_FRONTEND noninteractive

USER root

RUN curl -sSL https://get.docker.com/ | sh \
    && rm -rf /var/lib/apt/lists/*

COPY plugins.txt /usr/share/jenkins/plugins.txt
COPY glazer-deploy.sh /glazer-deploy.sh
COPY config.xml /var/jenkins_home/jobs/computerDB/config.xml
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

ENV DOCKER_HOST tcp://dind:4242
