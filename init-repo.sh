#!/bin/bash

set -e

ABS_FROM="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -d $1 && ! -w $1 ]]; then
  echo ERROR: Please supply a valid, writeable directory path.
  echo ERROR: for example:
  echo ERROR: $0 /../../docker-something
  exit 1
fi

ABS_DEST="$(cd $1 && pwd)"




if [[ ! -f  ${ABS_DEST}/Dockerfile.cross ]]; then
cat << EOF > ${ABS_DEST}/Dockerfile.cross
FROM __BASEIMAGE_ARCH__/alpine:latest

__CROSS_COPY qemu/qemu-__QEMU_ARCH__-static /usr/bin/
EOF
else
  echo INFO: Dockerfile.cross already exists, skipping
fi

cp ${ABS_FROM}/Makefile ${ABS_DEST}
cp ${ABS_FROM}/.travis.yml ${ABS_DEST}



echo INFO: please generate 5 variables on travis-ci DOCKER_USERNAME, DOCKER_PASSWORD, REPO, IMAGE_NAME, IMAGE_VERSION