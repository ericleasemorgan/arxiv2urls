#!/usr/bin/env bash

# configure
XSLT2CSV='./etc/arxiv2csv.xsl'
ROOT='http://export.arxiv.org/api/query?search_query='

# get input
QUERY="$1"

# do the work
echo "$ROOT$QUERY" >&2
curl --silent "$ROOT$QUERY" | xsltproc $XSLT2CSV -

# done
exit

