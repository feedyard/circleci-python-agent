FROM quay.io/feedyard/circleci-base-agent:4.10.0

LABEL maintainers = "nic.cheneweth@thoughtworks.com"

# bin versions installed
ENV CC_TEST_REPORTER_VERSION=0.7.0

# general packages to support building infra oriented docker images
RUN apk add --no-cache \
        build-base=0.5-r1 \
        python3-dev=3.7.3-r0 && \
    pip install \
        pytest==5.0.1 \
        pytest-runner==5.1 \
        coverage==4.5.4 \
        twine==1.13.0 && \
    curl -SLO https://codeclimate.com/downloads/test-reporter/test-reporter-${CC_TEST_REPORTER_VERSION}-linux-amd64 > cc-test-reporter && \
        chmod +x cc-test-reporter && \
        mv cc-test-reporter /usr/bin/cc-test-reporter

HEALTHCHECK NONE
