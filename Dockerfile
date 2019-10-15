FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y curl

RUN curl -s https://cli.nr-ext.net/installer.sh | bash

# Always add the publish-and-deploy script to the image
# even though it's only generally used by overriding the default ENTRYPOINT.
ADD publish-and-deploy /publish-and-deploy

ENTRYPOINT ["nr1"]
