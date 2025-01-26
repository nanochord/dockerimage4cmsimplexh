# Docker image for CMSimple_XH

This repository contains a Dockerfile and compose yaml configuration files that can be used to build images for [CMSimple_XH](https://www.cmsimple-xh.org). CMSimple_XH is an open source, free CMS. [See the project on GitHub](https://www.cmsimple-xh.org).

CMSimple_XH stores the content under the web server in dedicated folders and files, therefore the container needs to add both read and write permissions to these objects and also needs to use mounted drives on the host file system in order to preserve CMS content among running sessions in the container.

## How to build the image?

1. Download the latest release of CMSimple_XH from the [designated place](https://github.com/cmsimple-xh/cmsimple-xh/releases) and copy the content into a directory.
2. Copy the Dockerfile file from this repository in the root of this directory.
3. Execute the following docker command in this directory:

    $ docker build -t cmsimplexh .

## How to run the image has been built?

1. Create the following subfolders within the root directory:
    * data/content/
    * data/userfiles/downloads/
2. Copy the compose.yaml file in the root directory.
3. Execute the following docker command in this directory:

    $ docker compose up

> Note: Creating a new container always involves password reset in CMSimple_XH. Make sure that the previously created /data/userfiles/downloads/.defaultpwd.lock file is always deleted from the mounted file system before a new container is created and started, otherwise CMSimple_XH will ban the default password and the user won't be able to log in to edit the content.

## Links

You can find already built CMSimple_XH docker images on Docker Hub [in norlas' cmsimplexh repository](https://hub.docker.com/repository/docker/norlas/cmsimplexh/general).

[CMSimple_XH](https://www.cmsimple-xh.org) |
[CMSimple_XH on GitHub](https://github.com/cmsimple-xh/cmsimple-xh)
