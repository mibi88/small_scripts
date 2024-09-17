#!/bin/sh

# A small shell script to reduce the DPI of a PDF.
# by Mibi88
# License: Unlicense.

if [ $# != 3 ]; then
    echo "USAGE: minpdf [INPUT] [OUTPUT] [DPI]"
    exit 1
fi

if [ ! -f $1 ]; then
    echo "minpdf: Input file not found!"
    exit 1
fi

magick -units PixelsPerInch $1 -density $3 PDF:- | ps2pdf - $2

