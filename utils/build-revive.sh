#! /usr/bin/env bash

set -euo pipefail

$(pwd)/build-llvm.sh
export PATH=$(pwd)/llvm18.0/bin:$PATH
make install-bin
