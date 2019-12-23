#!/bin/sh

# gpu ids
DEVICE_IDS=0,1,2,3
export CUDA_VISIBLE_DEVICES=$DEVICE_IDS

python pose_estimation/valid.py \
    --cfg experiments/coco/resnet50/256x192_d256x3_adam_lr1e-3.yaml \
    --flip-test \
    --model-file models/pytorch/pose_coco/pose_resnet_50_256x192.pth.tar \
    --gpus ${DEVICE_IDS}
