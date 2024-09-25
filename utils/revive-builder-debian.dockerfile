# syntax=docker/dockerfile:1
# Dockerfile for building revive in a Debian container.
FROM debian:12
RUN <<EOF
apt-get update
apt-get install -q -y build-essential cmake make ninja-build python3 \
    libmpfr-dev libgmp-dev libmpc-dev ncurses-dev \
    git curl
EOF
RUN <<EOF
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
EOF
ENV PATH=/root/.cargo/bin:${PATH}
