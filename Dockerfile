FROM centos:7
LABEL maintainer="BIPUL KUMAR KURI"
ENV container=docker

WORKDIR /usr/src/

COPY logstash.repo /etc/yum.repos.d/logstash.repo

COPY bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod 0775 /usr/local/bin/docker-entrypoint.sh
RUN  /usr/local/bin/docker-entrypoint.sh
CMD ["/bin/bash"]

