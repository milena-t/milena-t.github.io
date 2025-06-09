#!/bin/sh

input="$1"
basename="${input%.*}"
jpeg="${basename}.jpeg"
sips -s format jpeg "$input" --out "$jpeg"
rm $input
exiftool -all= -overwrite_original $jpeg && jpegoptim --strip-all --max=75 $jpeg
