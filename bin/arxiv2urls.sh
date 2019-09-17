#!/usr/bin/env bash

# configure
XSLT2URLS='./etc/arxiv2urls.xsl'
ROOT='http://export.arxiv.org/api/query?search_query='

# get input
QUERY="$1"

# do the work
echo "$ROOT$QUERY" >&2
curl "$ROOT$QUERY" | xsltproc $XSLT2URLS -

# done
exit

