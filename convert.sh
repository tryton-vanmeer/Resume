#!/bin/sh

DEST="output"
CONVERT=$(which rst2pdf 2> /dev/null)

if [ -z $CONVERT ]; then
    echo "rst2pdf could not be found"
    echo "Install with your package manager"
    echo "Or create venv and pip install -r requirements.txt"
    exit
fi

if [ ! -d $DEST ]; then
    mkdir $DEST
fi

$CONVERT -s style.yml resume.rst 1> /dev/null && mv resume.pdf $DEST
