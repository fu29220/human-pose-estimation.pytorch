#!/bin/bash

PRJ_DIR=$(dirname $(
    cd "$(dirname "$0")"
    pwd
))

docker run \
    --name=fsl_humanPoseEstimation \
    --runtime=nvidia \
    --net=host \
    --ipc=host \
    -it \
    -v $HOME/Docker/docker-cache:/works/cache \
    -v ${PRJ_DIR}:/works/human-pose-estimation \
    -v /data/cv_hub/datasets:/works/dataset \
    fsl/reid:v1.0 /bin/bash
