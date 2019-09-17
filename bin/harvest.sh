#!/usr/bin/env bash

DIRECTORY=$1
URL=$2

mkdir -p "$DIRECTORY"

BASENAME=$( basename $URL )
OUTPUT="$DIRECTORY/$BASENAME.pdf"
curl -L --output "$OUTPUT" "$URL"

exit