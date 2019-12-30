#!/bin/sh

# gpu ids
DEVICE_IDS=0,1,2,3
export CUDA_VISIBLE_DEVICES=$DEVICE_IDS

python pose_estimation/train.py \
    --cfg experiments/coco/resnet50/256x192_d256x3_adam_lr1e-3.yaml \
    --gpus ${DEVICE_IDS} \
    --workers 16
