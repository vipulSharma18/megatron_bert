# Megatron

A PyTorch-based implementation of Megatron-LM for efficient large language model training.

## Setup commands:
```
docker build -t megatron_bert .

docker run --gpus all -it --rm \
  -v $HOME/.gitconfig:/root/.gitconfig:ro \
  -v $HOME/.ssh:/root/.ssh:ro \
  -v megatron:/workspace/megatron \
  -v dataset:/workspace/dataset \
  -v checkpoints:/workspace/checkpoints \
  megatron_bert:latest
```

## Bounty:
"I have some megatron checkpoints for bert models that are entirely incompatible with hugging face. Weeks and months of debugging have led me nowhere. I'll pay someone $500 today if they can fix this. I can send the checkpoints tn"
https://x.com/lcastricato/status/1934079505087238521
