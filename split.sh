#!/bin/bash

mkdir scss
touch ./scss/index.scss

input=$1
filename='partial'

# Splits file at '/* #' string into partials.
split -a 1 -p '/\*\ #\ ' $input $filename

# Counter.
n=1

# Add file suffix.
# for file in partial*; do
#    mv "$file" "${file:0:7}$((n++)).scss";
# done

for file in partial*; do
    read -r firstline<$file;
    sudo mv "$file" `echo ./scss/${firstline//[^[:alnum:]]/}.scss | tr '[A-Z]' '[a-z]'`;
    echo @import \"${firstline//[^[:alnum:]]/}\" | tr '[A-Z]' '[a-z]' >> ./scss/index.scss
done
