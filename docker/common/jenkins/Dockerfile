FROM jenkinsci/blueocean

USER root

RUN apk add --no-cache py-pip python3-dev libffi-dev openssl-dev gcc libc-dev rust cargo make gettext \
    && pip3 install docker-compose

USER jenkins
