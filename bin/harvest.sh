#!/usr/bin/env bash

DIRECTORY=$1

mkdir -p "$DIRECTORY"

while read URL; do
	BASENAME=$( basename $URL )
	OUTPUT="$DIRECTORY/$BASENAME.pdf"
	curl -L --output $OUTPUT $URL
done < "${2:-/dev/stdin}"

# finished
exit