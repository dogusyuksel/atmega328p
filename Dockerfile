FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive

USER root

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y --no-install-recommends install \
        build-essential \
        gcc \
        g++ \
        gdbserver \
        gcc-avr \
        binutils-avr \
        avr-libc \
        gdb-avr \
        libusb-dev \
        avrdude \
        git \
        git-core \
        git-lfs \
        vim \
        cmake \
        gcc-multilib \
        g++-multilib \
        software-properties-common \
        language-pack-en-base \
        wget \
        openocd \
        gdb-multiarch \
        valgrind \
        gdb \
        ruby \
        clang-format \
        unzip && \
    apt-get -y clean

RUN gem install ceedling -v 0.31.1

RUN git config --global --add safe.directory /workspace

CMD ["/bin/bash"]

WORKDIR /workspace/
