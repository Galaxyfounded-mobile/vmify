FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    qemu-system-x86 \
    novnc \
    websockify \
    wget \
    python3-pip \
    x11vnc \
    xfce4 \
    tzdata \
    git \
    && apt-get clean

RUN pip3 install --upgrade websockify

RUN mkdir -p /workspace/vm
WORKDIR /workspace/vm
