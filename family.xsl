<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:template match="/">
		<html>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="family">
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="description">
		<xsl:apply-templates/>
	</xsl:template>
	
	
	<xsl:template match="family">
	<table  border="2" id="{@name}" >
			<tr bgcolor="yellow" >
				<td colname="gender">gender</td>
				<td colname="type">type</td>
				<td colname="firstname">firstname</td>
				<td colname="lastname">lastname</td>
				<td colname="age">age</td>

			</tr>
			
			<xsl:for-each select="person">
				<tr bgcolor="pink" >
					<td><xsl:value-of select="@gender"/></td>
					<td><xsl:value-of select="@type"/></td>
					<td><xsl:value-of select="name/firstname"/></td>
					<td><xsl:value-of select="name/lastname"/></td>
					<td><xsl:value-of select="age"/></td>

				</tr>
			</xsl:for-each>
	</table>
	</xsl:template>
	

</xsl:stylesheet>
