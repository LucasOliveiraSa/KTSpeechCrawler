#!/bin/bash
trap "exit" INT

target_dir=$1
filter_dir=$2

for filename in "$target_dir"/*.wav;
do
    python ./crawler/process.py "$filename" "$filter_dir"
done
