<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0'
xmlns:atom='http://www.w3.org/2005/Atom' >

<!--

    arxive2urls.xsl - given an Arxiv Atom file, output a list of URLs pointing to PDF files
	
    Eric Lease Morgan (emorgan@nd.edu)
    September 16, 2019 - first cut

-->

	<xsl:output method='text' />
	
    <xsl:template match="atom:feed">
		<xsl:for-each select="//atom:link">
			<xsl:if test='./@type = "application/pdf"'>
				<xsl:value-of select='./@href' /><xsl:text>&#10;</xsl:text>
			</xsl:if>
		</xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
