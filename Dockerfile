FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y curl

RUN curl -s https://cli.nr-ext.net/installer.sh | bash

COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
