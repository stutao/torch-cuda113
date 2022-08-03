FROM --platform=linux/arm64  python:3.8.10 as base


RUN pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113