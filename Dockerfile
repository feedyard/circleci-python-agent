FROM quay.io/feedyard/circleci-remote-docker:5.3.0

LABEL maintainers = "nic.cheneweth@thoughtworks.com"

# bin versions installed
ENV CC_TEST_REPORTER_VERSION=0.7.0

# general packages to support building infra oriented docker images
RUN apk --no-cache add  \
        python3=3.7.3-r0 && \
    apk --no-cache add --virtual build-dependencies \
        build-base=0.5-r1 \
        python3-dev=3.7.3-r0 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip==19.2.2 setuptools==41.1.0 && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    rm -r /root/.cache && \
    pip install \
        pylint==2.3.1 \
        pytest==5.0.1 \
        pytest-runner==5.1 \
        coverage==4.5.4 \
        twine==1.13.0 && \
    curl -SLO https://codeclimate.com/downloads/test-reporter/test-reporter-${CC_TEST_REPORTER_VERSION}-linux-amd64 && \
        mv test-reporter-${CC_TEST_REPORTER_VERSION}-linux-amd64 /usr/bin/cc-test-reporter && \
        chmod +x /usr/bin/cc-test-reporter

HEALTHCHECK NONE
