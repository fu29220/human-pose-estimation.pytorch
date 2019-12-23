#!/bin/sh

python pose_estimation/train.py \
    --cfg experiments/coco/resnet50/256x192_d256x3_adam_lr1e-3.yaml
