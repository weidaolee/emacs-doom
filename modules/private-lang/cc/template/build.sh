#!/usr/bin/bash

rm -r build
mkdir build
cd build
cmake .. \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

cmake --build . -j 16
