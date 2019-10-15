# New Relic One Publish & Deploy Action

An attempt at deploying & publishing a New Relic One Nerdpack using GitHub Actions.

# nr1-in-docker

This repo includes a dockerized copy of the `nr1` CLI tool. Everywhere you see the `nr1` CLI command referenced in New Relic's documentation (e.g. [the list of available commands](https://developer.newrelic.com/build-tools/new-relic-one-applications/cli)) you can run the `./nr1` executable in this repo instead.

Notes:

* The first time you run `./nr1` it will build the docker image for you.
* The default tag assigned to the docker image is `nr1-in-docker`. If you want to use a different tag for the image, use the `$NR1_IMAGE` environment variable.
