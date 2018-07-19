
# docker_multiarch_ci_pipeline
build system for multi-arch-docker images
## supported architectures
amd64, arm32v6, arm64v8

## USAGE
### TRAVIS-CI
* enable the git-repository in travis-ci
* create 5 environement variables:
    *   DOCKER_USERNAME     your docker username
    *   DOCKER_PASSWORD     your docker password
    *   REPO                your repo on docker hub
    *   IMAGE_NAME          the name for the image
    *   IMAGE_VERSION       version og image, manifest will always be :latest
### DOCKERFILE
* edit the file to meet your needs


### other files & directories
There is no need to edit

# credits
based on ideas of the multiarch team https://github.com/multiarch and inspired by Christy Perez https://github.com/clnperez

## License
MIT (c) 2017, 2018 Holger Imbery https://github.com/holgerimbery

![made-in-berlin](https://github.com/holgerimbery/environment/raw/master/made-in-berlin-badge_small.png)
