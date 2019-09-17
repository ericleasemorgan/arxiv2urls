#!/usr/bin/env bash

DIRECTORY=$1
URL=$2

BASENAME=$( basename $URL )
OUTPUT="$DIRECTORY/$BASENAME.pdf"
curl -L --output "$OUTPUT" "$URL"

exit