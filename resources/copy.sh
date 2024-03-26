#!/bin/bash

set -euo pipefail

CACHE_PATH="$HOME/.cache/teler-waf/"
TODAY_DATE="$(date +%d%m%Y)"

echo "::debug::Copying '${CACHE_PATH}' into '${1}'"
cp -a "${CACHE_PATH}" "/tmp/.teler-resources-${TODAY_DATE}"