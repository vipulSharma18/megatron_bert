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

## Model Checkpoints:
We reused Megatron's BeRT checkpoints which can be downloaded here:
BERT-345M-uncased:
```
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/megatron_bert_345m/versions/v0.1_uncased/zip -O checkpoints/megatron_bert_345m_v0.1_uncased.zip
```
BERT-345M-cased:
```
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/megatron_bert_345m/versions/v0.1_cased/zip -O checkpoints/megatron_bert_345m_v0.1_cased.zip
```

Vocabulary files:
uncased:
```
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-uncased-vocab.txt -O checkpoints/bert-large-uncased-vocab.txt
```

cased:
```
wget https://s3.amazonaws.com/models.huggingface.co/bert/bert-large-cased-vocab.txt -O checkpoints/bert-large-cased-vocab.txt
```

## Bounty:
"I have some megatron checkpoints for bert models that are entirely incompatible with hugging face. Weeks and months of debugging have led me nowhere. I'll pay someone $500 today if they can fix this. I can send the checkpoints tn"
https://x.com/lcastricato/status/1934079505087238521

### References:
1. https://docs.nvidia.com/megatron-core/developer-guide/latest/index.html
2. https://github.com/huggingface/transformers/blob/main/src/transformers/models/megatron_gpt2/checkpoint_reshaping_and_interoperability.py
3. https://huggingface.co/docs/transformers/model_doc/megatron-bert
