#!/bin/bash

BENCHES=(
    "B_INIT"
    "B_SUM"
    "B_COPY"
    "B_UPDATE"
    "B_TRIAD"
    "B_DAXPY"
    "B_STRIAD"
    "B_SDAXPY"
)

for BENCH in ${BENCHES[@]}; do
    echo Compile $BENCH...

    make clean
    make MY_OPTS=-D$BENCH -j4
    mv bwbench-GCC $BENCH-bwbench-gcc
    
done
