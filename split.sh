#!/bin/bash

# Splits file at '/* #' string into partials.
split -a 1 -p '/\*\ #\ ' $1 partial

# Counter.
n=1

# Add file suffix.
# for file in partial*; do
#    mv "$file" "${file:0:7}$((n++)).scss";
# done

for file in partial*; do
    read -r firstline<$file;
    sudo mv "$file" `echo ${firstline//[^[:alnum:]]/}.scss | tr '[A-Z]' '[a-z]'`;
done