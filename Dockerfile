FROM nvcr.io/nvidia/pytorch:25.05-py3

WORKDIR /workspace
COPY . .

RUN pip install -e .

CMD ["/bin/bash"]