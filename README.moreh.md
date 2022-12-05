# Running PNDM on Moreh Framework
![](https://badgen.net/badge/Moreh-HAC/failed/red)

*[2022.12.05]* Currently testing on Moreh 22.12.0

## Prepare

### Data
Downloaded automatically by the program.

### Env
```bash
conda env create -f hacenv.yml
conda activate pndm
update-moreh --force --target 22.12.0
```

## Run

### Evaluate existing models

### Training
Edit `config/ddim_cifar10.yml` and change `Train.epoch` to some small value. Then:
```bash
mkdir -p temp/train

python3 main.py \
    --runner train \
    --device cuda \
    --config ddim_cifar10.yml \
    --train_path temp/train
```
