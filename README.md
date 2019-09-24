# arxiv2urls

Given a Arxiv API query, output URLs (or CSV file) pointing to PDF files, and optionally harvest the PDF files to a given directory. Example usage:

        ./bin/arxiv2urls.sh 'cat:cs.DL&max_results=500' | parallel ./bin/harvest.sh dl {}

        ./bin/arxiv2csv.sh 'ti:oai*&max_results=1000' > oai/metadata.csv

        ./bin/arxiv2csv.sh 'cat:cs.CV&max_results=10&sortBy=lastUpdatedDate&sortOrder=descending' | \
        csvcut -c url | tail -n +2 | parallel ./bin/harvest.sh library {} &
        
Your milage may vary, at least until there exists better documentation.  :-)

--- 
Eric Lease Morgan &lt;emorgan@nd.edu&gt;  
September 24, 2019
