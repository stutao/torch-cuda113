FROM --platform=linux/arm64  pytorch/pytorch:1.10.0-cuda11.3-cudnn8-runtime as base

RUN python3 -m pip install opencv-python>=4.1.1 