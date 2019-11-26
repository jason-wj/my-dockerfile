# Phusion image based on Ubuntu
FROM phusion/baseimage:0.10.2

ENV TERM=xterm
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade && \
    apt-get --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
RUN apt-get install -y cmake pkg-config libssl-dev git clang && \
	curl https://sh.rustup.rs -sSf | sh -s -- -y
ENV PATH=/root/.cargo/bin:$PATH

RUN rustup toolchain install nightly && \
    rustup default nightly && \
	rustup target add wasm32-unknown-unknown --toolchain nightly && \
	cargo install --git https://github.com/alexcrichton/wasm-gc

ENV DEBIAN_FRONTEND=