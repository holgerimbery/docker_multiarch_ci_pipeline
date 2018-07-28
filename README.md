
# docker_multiarch_ci_pipeline
build system for multi-arch-docker images
## supported architectures
amd64, arm32v6, arm64v8

## USAGE
* download the [latest release](https://github.com/holgerimbery/docker_multiarch_ci_pipeline/releases)
* excecute init-repo.sh and generate a new repository for your new docker-image
* edit Dockerfile.cross to meet your needs
### TRAVIS-CI
* enable the git-repository in travis-ci
* create 4 environement variables:
    *   DOCKER_USERNAME     your docker username
    *   DOCKER_PASSWORD     your docker password
    *   REPO                your repo on docker hub
    *   IMAGE_NAME          the name for the image



### other files
There is no need to edit

# credits
based on ideas of the multiarch team https://github.com/multiarch and inspired by Christy Norman https://github.com/clnperez

## License
MIT (c) 2017, 2018 Holger Imbery https://github.com/holgerimbery

![made-in-berlin](https://github.com/holgerimbery/environment/raw/master/made-in-berlin-badge_small.png)
