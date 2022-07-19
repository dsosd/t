#!/bin/bash

set -o errexit -o nounset -o pipefail

REF_HASH="19ecaca189ca2e1d62f78bdbf7ea6d857b6a6a4a346f3d15ce0b37d881e8e833"

HASH=$(node test.js | sha256sum | grep -Po "^[0-9a-f]+")

if [[ "$HASH" == "$REF_HASH" ]]; then
	exit 0
else
	exit 1
fi
