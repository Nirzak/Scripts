#!/bin/bash

###########################
# Author: Nirjas Jakilim
# Description: Simple spectrogram generator of audio files usinf SoX.
# Needed programs: You must have to install SoX before using it.
# Usage: run ./spekgenerator.sh on the audio files directory.
# Note: Currently script is hardcoded to support flac files only.
#############################

mkdir -p Spectrograms
for f in *.flac; do
    p=${f%.*}
    echo $p
    outfile="${f%%.flac}.png"
    sox "$f" -n spectrogram -t "$p" -c "$p" -o "$outfile";
mv "$outfile" Spectrograms/
done