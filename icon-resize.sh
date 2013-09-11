#!/bin/bash

if [ -z "$1" ]; then 
    echo "Usage: ./icon-resize image.png"; 
else 
    echo "Resizing image $1 to iOS icon sizes.";

    convert $1 -resize 57x57 Icon.png
    convert $1 -resize 512x512 iTunesArtwork
    convert $1 -resize 1024x1024 iTunesArtwork@2x
    convert $1 -resize 72x72 Icon-72.png
    convert $1 -resize 144x144 Icon-72@2x.png
    convert $1 -resize 29x29 Icon-Small.png
    convert $1 -resize 58x58 Icon-Small@2x.png
    convert $1 -resize 50x50 Icon-Small-50.png
    convert $1 -resize 100x100 Icon-Small-50@2x.png

fi

