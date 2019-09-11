# feedyard/circleci-python-pkg-agent [![CircleCI](https://circleci.com/gh/feedyard/circleci-python-pkg-agent.svg?style=shield)](https://circleci.com/gh/feedyard/circleci-python-pkg-agent) [![Docker Repository on Quay](https://quay.io/repository/feedyard/circleci-python-pkg-agent/status "Docker Repository on Quay")](https://quay.io/repository/feedyard/circleci-python-pkg-agent) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/feedyard/circleci-python-pkg-agent/master/LICENSE) [![Base Image](https://img.shields.io/badge/FROM-alpine-blue.svg)](https://alpinelinux.org)

Based on feedyard/circleci-remote-docker, a Docker image for use as a primary container in a circleci workflow building
python pip packages. Includes support for Code Climate test coverage reporter.

apk/bin          | pip
-----------------|----------------
curl             | pip
python3          | setuptools
build-base       | wheel
python3-dev      | twine
libffi-dev       |
libressl-dev     |
cc-test-reporter |


See CHANGELOG for detailed list of installed packages/versions per versioned build
