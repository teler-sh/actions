#!/bin/bash

set -euo pipefail

CACHE_PATH="$HOME/.cache/teler-waf"
REPO_URL="https://github.com/kitabisa/teler-resources"
DB_FILE="db.tar.zst"
DB_OUTPUT="/tmp/${DB_FILE}"

echo "::debug::Downloading '${DB_FILE}'"
wget -q "${REPO_URL}/raw/master/db/${DB_FILE}" -O "${DB_OUTPUT}"

echo "::debug::Creating '${CACHE_PATH}' directory"
mkdir -p "${CACHE_PATH}"

echo "::debug::Extracting '${DB_FILE}' to '${CACHE_PATH}'"
tar -I zstd -xf "${DB_OUTPUT}" -C "${CACHE_PATH}"

# Run copy
. "${GITHUB_ACTION_PATH}/copy.sh"