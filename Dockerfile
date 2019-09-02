FROM quay.io/feedyard/circleci-remote-docker:5.3.1

LABEL maintainers = "nic.cheneweth@thoughtworks.com"

# bin versions installed
ENV CC_TEST_REPORTER_VERSION=0.7.0

# general packages to support building infra oriented docker images
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
    apk --no-cache add  \
        curl=7.65.1-r0 \
        python3=3.7.4-r0 \
        build-base=0.5-r1 \
        python3-dev=3.7.4-r0 \
        libffi-dev=3.2.1-r6 \
        libressl-dev=2.7.5-r0 \
        g++=8.3.0-r0 \
        gcc=8.3.0-r0 \
        make=4.2.1-r2 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip==19.2.3 && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    rm -r /root/.cache && \
    pip install \
        setuptools==41.2.0 \
        wheel==0.33.6 \
        twine==1.13.0 \
        pipenv==2018.11.26 \
        pylint==2.3.1 \
        pytest==5.1.1 \
        pytest-runner==5.1 \
        coverage==4.5.4 \
        cryptography==2.7 && \
    curl -SLO https://codeclimate.com/downloads/test-reporter/test-reporter-${CC_TEST_REPORTER_VERSION}-linux-amd64 && \
    mv test-reporter-${CC_TEST_REPORTER_VERSION}-linux-amd64 /usr/bin/cc-test-reporter && \
    chmod +x /usr/bin/cc-test-reporter

HEALTHCHECK NONE
