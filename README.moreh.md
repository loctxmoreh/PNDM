# Running PNDM on Moreh Framework
![](https://badgen.net/badge/Moreh-HAC/failed/red) ![](https://badgen.net/badge/NVIDIA-A100/passed/green)

*[2022.12.05]* Currently testing on Moreh 22.12.0

*[2022.12.09]* Train successfully on A100 machine

## Prepare

### Data
Downloaded automatically by the program.

### Environment

#### On A100 machine
```bash
conda env create -f a100env.yml
conda activate pndm
```

#### On HAC machine
```bash
conda env create -f hacenv.yml
conda activate pndm
update-moreh --force --target 22.12.0
```

## Run

### Evaluate existing models
```bash
# By default, run `evaluate.sh` with no argument will default to `ddim_cifar10`
./evaluate.sh

# or run with `iddpm_cifar10`
./evaluate.sh iddpm_cifar10
```

**TODO:**
[ ] Try different `--method` arguments

### Training

*[2022.12.09]* Tested with these two configurations: `ddim_cifar10`, `iddpm_cifar10`

Edit the configuration file inside `config/` and change `Train.epoch` to some small value.
Then, run the train script:

```bash
# By default, run `train.sh` with no argument will default to `ddim_cifar10`
./train.sh

# or run with `iddpm_cifar10`
./train.sh iddpm_cifar10
```
