#!/bin/bash
# Fix DFP provided sources for Link Time Optimized compiles


for FILE in ./*; do
    sed -i 's/__attribute__ ((section(".vectors")))/__attribute__ ((used, section(".vectors")))/' $FILE
done

