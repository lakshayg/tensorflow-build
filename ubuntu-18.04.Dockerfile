FROM ubuntu:18.04

# There might be some unneccessary stuff here, but at least it gets the job done ( to install the .whl file )

RUN apt update && apt install -y \
    build-essential \
    curl \
    git \
    wget \
    libc-ares-dev \
    libjpeg-dev \
    openjdk-8-jdk \
    gcc \
    g++ \
    python3 \
    python-pip \
    && rm -rf /var/lib/lists/*

RUN wget https://github.com/lakshayg/tensorflow-build/releases/download/tf2.2.0-py3.7-ubuntu18.04/tensorflow-2.2.0-cp37-cp37m-linux_x86_64.whl

RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa

RUN apt install -y python3.7

RUN python3.7 --version

RUN apt install -y python3-pip
RUN apt install -y libpython3.7-dev
RUN python3.7 -m pip install --ignore-installed --upgrade tensorflow-2.2.0-cp37-cp37m-linux_x86_64.whl --user
