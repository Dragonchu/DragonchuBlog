#!/bin/bash

short_commit=$(git rev-parse --short HEAD)
pipeline_id="${GITHUB_RUN_ID:-0}"
tag="v${pipeline_id}-${short_commit}"

docker push "registry.cn-hangzhou.aliyuncs.com/dragonchu/dragonchu_blog_backend:${tag}"