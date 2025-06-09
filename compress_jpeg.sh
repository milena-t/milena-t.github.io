#!/bin/sh

exiftool -all= -overwrite_original $1 && jpegoptim --strip-all --max=75 $1
