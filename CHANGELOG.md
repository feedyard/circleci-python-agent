### 08-29-2019 release version 0.0.7

FROM quay.io/feedyard/circleci-remote-docker:5.3.1

http://dl-cdn.alpinelinux.org/alpine/v3.10/main
(1/35) Upgrading musl (1.1.22-r3 -> 1.1.23-r3)
(2/35) Installing binutils (2.32-r0)
(3/35) Installing libmagic (5.37-r0)
(4/35) Installing file (5.37-r0)
(5/35) Installing gmp (6.1.2-r1)
(6/35) Installing isl (0.18-r0)
(7/35) Installing libgomp (8.3.0-r0)
(8/35) Installing libatomic (8.3.0-r0)
(9/35) Installing libgcc (8.3.0-r0)
(10/35) Installing mpfr3 (3.1.5-r1)
(11/35) Installing mpc1 (1.1.0-r0)
(12/35) Installing libstdc++ (8.3.0-r0)
(13/35) Installing gcc (8.3.0-r0)
(14/35) Installing musl-dev (1.1.23-r3)
(15/35) Installing libc-dev (0.7.1-r0)
(16/35) Installing g++ (8.3.0-r0)
(17/35) Installing make (4.2.1-r2)
(18/35) Installing fortify-headers (1.1-r0)
(19/35) Installing build-base (0.5-r1)
(20/35) Installing curl (7.65.1-r0)
(21/35) Installing linux-headers (4.19.36-r0)
(22/35) Installing libffi (3.2.1-r6)
(23/35) Installing pkgconf (1.6.3-r0)
(24/35) Installing libffi-dev (3.2.1-r6)
(25/35) Installing libressl2.7-libcrypto (2.7.5-r0)
(26/35) Installing libressl2.7-libssl (2.7.5-r0)
(27/35) Installing libressl2.7-libtls (2.7.5-r0)
(28/35) Installing libressl-dev (2.7.5-r0)
(29/35) Installing libbz2 (1.0.8-r1)
(30/35) Installing gdbm (1.13-r1)
(31/35) Installing xz-libs (5.2.4-r0)
(32/35) Installing readline (8.0.0-r0)
(33/35) Installing sqlite-libs (3.29.0-r0)

http://dl-cdn.alpinelinux.org/alpine/edge/main
(34/35) Installing python3 (3.7.4-r0)
(35/35) Installing python3-dev (3.7.4-r0)

pip==19.2.3
setuptools==41.2.0
wheel==0.33.6
twine==1.13.0
pylint==2.3.1
pytest==5.1.1
pytest-runner==5.1
coverage==4.5.4
cryptography==2.7

CC_TEST_REPORTER_VERSION=0.7.0

### 09-03-2019 add pipenv

pipenv==2018.11.26

### 09-10-2019 simplified (assume no dev packages)

remove

pipenv==2018.11.26
pylint==2.3.1
pytest==5.1.1
pytest-runner==5.1
coverage==4.5.4
cryptography==2.7

pip==19.2.3
setuptools==41.2.0
wheel==0.33.6
twine==1.14.0
