#!/usr/bin/env bash
set -euo pipefail

CID="$(docker run -it -d --entrypoint ash local/circleci-python-pkg-agent:latest)"
inspec exec --no-distinct-exit profiles/cis-docker
inspec exec profiles/circleci-python-pkg-agent/ -t docker://$CID
docker rm -f $CID
