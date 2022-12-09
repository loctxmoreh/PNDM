#!/usr/bin/env bash

mkdir -p temp/train
config="iddpm_cifar10"

/usr/bin/env python3 main.py \
    --runner train \
    --device cuda \
    --config "$config".yml \
    --train_path temp/train
