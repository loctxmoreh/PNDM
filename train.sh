#!/usr/bin/env bash

DEFAULT_CONFIG="ddim_cifar10"

config="${1:-$DEFAULT_CONFIG}"

mkdir -p temp/train
/usr/bin/env python3 main.py \
    --runner train \
    --device cuda \
    --config "$config".yml \
    --train_path temp/train
