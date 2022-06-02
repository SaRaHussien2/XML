<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
			<h2>A CD Catalog</h2>
				<table border="1">
				<tr bgcolor="yellow">
					<th>Title</th>
					<th>Artist</th>
				</tr>
					<xsl:for-each select="CATALOG/CD">
						<tr>
							<td><xsl:value-of select="TITLE"/></td>
							<xsl:choose>
								<xsl:when test="PRICE &gt; 10">
									<td bgcolor="red">
									<xsl:value-of select="ARTIST"/></td>
								</xsl:when>
								<xsl:when test="PRICE&gt;9 and PRICE&lt;=10">
									<td bgcolor="gray">
									<xsl:value-of select="ARTIST"/></td>
								</xsl:when>
								<xsl:otherwise>
									<td><xsl:value-of select="ARTIST"/></td>
								</xsl:otherwise>
							</xsl:choose>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet> 