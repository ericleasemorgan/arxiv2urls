# arxiv2urls

Given a Arxiv API query, output URLs pointing to PDF files, and optionally harvest the PDF files to a given directory. Example usage:

         ./bin/arxiv2urls.sh 'cat:cs.DL&max_results=25' | ./bin/harvest.sh dl

Your milage may vary, at least until there exists better documentation.  :-)

--- 
Eric Lease Morgan &lt;emorgan@nd.edu&gt;  
September 16, 2019
