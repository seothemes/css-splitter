#!/bin/bash

mkdir scss
touch ./scss/index.scss

input=$1
filename='partial'

# Splits file at regex string.
split -a 1 -p '/\*\ #\ ' $input $filename

# Rename and move partials.
for file in partial*; do
    read -r firstline<$file;
    sudo mv "$file" `echo ./scss/${firstline//[^[:alnum:]]/}.scss | tr '[A-Z]' '[a-z]'`;
    echo @import \"${firstline//[^[:alnum:]]/}\"; | tr '[A-Z]' '[a-z]' >> ./scss/index.scss
done
