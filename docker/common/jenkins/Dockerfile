FROM jenkins/jenkins:alpine

USER root

RUN apk add --no-cache py-pip python3-dev libffi-dev openssl-dev gcc libc-dev rust cargo make gettext docker-cli-compose \
    && pip3 install docker-compose

USER jenkins
