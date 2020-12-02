# lotus编译环境
FROM golang:latest

ENV RUSTFLAGS="-C target-cpu=native -g"

ENV FFI_BUILD_FROM_SOURCE=1

ADD ./config/cargo /root/.cargo/config

ENV PATH="$PATH:/root/.cargo/bin"
ENV GOPROXY https://goproxy.cn

WORKDIR /go/src/github.com/filecoin-project/lotus/

RUN apt-get update -y && \
	apt-get install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl clang build-essential libhwloc-dev -y

RUN curl -sSf https://sh.rustup.rs | sh -s -- -y

RUN /bin/bash -c "source /root/.cargo/env"
