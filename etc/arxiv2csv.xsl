<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl='http://www.w3.org/1999/XSL/Transform' version='1.0'
xmlns:atom='http://www.w3.org/2005/Atom' >

<!--

    arxive2csv.xsl - given an Arxiv Atom file, output a csv of bibliographics and url
	
    Eric Lease Morgan (emorgan@nd.edu)
    September 17, 2019 - first cut

-->

	<xsl:output method='text' />
	
	<xsl:template match="atom:feed">
		<xsl:text>"author","title","date","url"&#10;</xsl:text>
		<xsl:for-each select="//atom:entry">
			<xsl:text>&quot;</xsl:text><xsl:value-of select='./atom:author/atom:name' /><xsl:text>&quot;,</xsl:text>
			<xsl:text>&quot;</xsl:text><xsl:value-of select='normalize-space(./atom:title)' /><xsl:text>&quot;,</xsl:text>
			<xsl:text>&quot;</xsl:text><xsl:value-of select='substring(./atom:published, 0, 11)' /><xsl:text>&quot;,</xsl:text>
			<xsl:for-each select=".//atom:link">
				<xsl:if test='./@type = "application/pdf"'>
					<xsl:text>&quot;</xsl:text><xsl:value-of select='./@href' /><xsl:text>&quot;</xsl:text>
				</xsl:if>
			</xsl:for-each>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each>
	</xsl:template>
  
</xsl:stylesheet>
