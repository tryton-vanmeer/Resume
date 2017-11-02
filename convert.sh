#!/bin/sh

OUTPUT="output"

if [ ! -d $OUTPUT ]; then
    mkdir $OUTPUT
fi

latexmk -pdf -jobname=$OUTPUT/resume resume.tex
