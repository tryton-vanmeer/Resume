#!/bin/sh

OUTPUT="output"

if [ ! -d $OUTPUT ]; then
    mkdir $OUTPUT
fi

xelatex -pdf -jobname=$OUTPUT/resume resume.tex
