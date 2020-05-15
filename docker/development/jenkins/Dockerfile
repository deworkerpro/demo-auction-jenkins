FROM jenkinsci/blueocean

USER root

RUN apk add --no-cache py-pip python3-dev libffi-dev openssl-dev gcc libc-dev make \
    && pip3 install docker-compose

USER jenkins
