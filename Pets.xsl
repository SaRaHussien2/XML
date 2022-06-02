<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="pets">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="petType">
	<h2><xsl:value-of select="@name"/></h2>
	<table  border="2" id="{@name}" bgcolor="cyan" >
			<tr >
				<td colname="id">ID</td>
				<td colname="name">Name</td>
				<td colname="vaccinated">vaccineStatus</td>
				<td colname="healthy">healthStatus</td>
			</tr>
			<xsl:for-each select="pet">
				<tr >
					<td><xsl:value-of select="@id"/></td>
					<td><xsl:value-of select="@name"/></td>
					<td><xsl:value-of select="@vaccineStatus"/></td>
					<td><xsl:value-of select="@healthStatus"/></td>
				</tr>
			</xsl:for-each>
	</table>
	</xsl:template>
</xsl:stylesheet>
