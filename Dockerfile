FROM node:12

RUN curl -s https://cli.nr-ext.net/installer.sh | bash

# Always add the publish-and-deploy script to the image
# even though it's only generally used by overriding the default ENTRYPOINT.
ADD publish-and-deploy /publish-and-deploy

WORKDIR /nerdpack

ENTRYPOINT ["nr1"]
