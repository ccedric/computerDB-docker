FROM java:8

# update packages and install maven
RUN  \
  export DEBIAN_FRONTEND=noninteractive && \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y sl && \
  apt-get install -y nano wget curl git maven

# attach volumes
VOLUME /volume/git

ENV MYSQL_HOST tcp://dind:3306

# create working directory
RUN mkdir -p /local/git
WORKDIR /local/git

COPY db.properties /

CMD cp /db.properties /local/git/computerDB/src/test/resources/db.properties; mvn clean package test -f /local/git/computerDB/pom.xml
