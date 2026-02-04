#!/bin/bash
set -e

lambda_dir=$1

if [ ! -d "$lambda_dir/src" ]; then
  echo "Warning: $lambda_dir/src does not exist, skipping"
  exit 0
fi

if [ ! -f "$lambda_dir/src/package.json" ]; then
  echo "Error: $lambda_dir/src/package.json not found"
  exit 1
fi

echo "Validated: $lambda_dir"
exit 0
