#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

mkdir -p build-omega2
cd build-omega2
cmake -DCMAKE_TOOLCHAIN_FILE=/Toolchain.cmake "$@" ..
make
