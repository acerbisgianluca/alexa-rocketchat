#!/bin/bash
set -e
set -o errexit

merged=$(jq --raw-output .pull_request.merged "$GITHUB_EVENT_PATH")

echo "DEBUG -> merged: $merged"

# return value: 0 -> success, 1 -> fail
if [ "$merged" == "true" ];
    then
        # branch_name=$(jq --raw-output .pull_request.head.ref "$GITHUB_EVENT_PATH")
        exit 0
    else
        exit 1
fi
