#!/bin/bash

DIR="$1"

find "$DIR" | while read line; do
 du -m "$line" | awk '$1 > 4 {print $2}'
done
    