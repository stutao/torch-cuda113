FROM --platform=linux/arm64  ubuntu:20.04 as base


# install python 3.8.10

RUN sudo apt update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    sudo apt install python3.8 && \ 
    apt-get update && \
    sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget

FROM base as py


RUN pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113