FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    qemu \
    novnc \
    websockify \
    python3-pip \
    xfce4 \
    x11vnc \
    && apt-get clean

RUN pip3 install --upgrade websockify

RUN mkdir -p /workspace/vm

WORKDIR /workspace/vm
