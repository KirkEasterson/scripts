#!/bin/bash

filename=$1
target="$(dirname "${filename}")/../pdf"
outputFile="$(basename "$filename" .md).pdf"

mkdir -p $target
pandoc -o "$target/$outputFile" $filename &
