#!/usr/bin/env bash

set -euo pipefail

CURRENT_DIR=$(basename $PWD)

if [ "$CURRENT_DIR" == "bullseye" ]; then
    S3_PATH="s3://debs.r4pi.org/bullseye/"
elif [ "$CURRENT_DIR" == "bookworm" ]; then
    S3_PATH="s3://debs.r4pi.org/bookworm/"
elif [ "$CURRENT_DIR" == "noble" ]; then
    S3_PATH="s3://debs.r4pi.org/noble/"
else
    echo "Error: command must be run from within the repo directory"
    exit 1
fi

# s3cmd sync --delete-removed ./ s3://debs.r4pi.org
s3cmd sync --delete-removed ./ "$S3_PATH"
