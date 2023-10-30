#!/bin/bash

# How can I get the source directory of a Bash script from within the script itself?
# https://stackoverflow.com/questions/59895/
docker_dir="$(cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

short_commit=$(git rev-parse --short HEAD)
pipeline_id="${GITHUB_RUN_ID:-0}"
tag="v${pipeline_id}-${short_commit}"

docker build \
  --tag "registry.cn-hangzhou.aliyuncs.com/dragonchu/dragonchu_blog_backend:${tag}" \
  .