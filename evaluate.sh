#!/usr/bin/env bash

DEFAULT_CONFIG="ddim_cifar10"

config="${1:-$DEFAULT_CONFIG}"

mkdir -p temp/results
/usr/bin/env python3 main.py \
    --runner sample \
    --method DDIM \
    --sample_speed 50 \
    --device cuda \
    --config $config.yml \
    --image_path temp/results \
    --model_path $config.ckpt
