<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:wix="http://schemas.microsoft.com/wix/2006/wi">

	<xsl:output method="xml" indent="yes"/>

	<!--<xsl:template match="wix:Wix">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="wix:Component[not(contains(wix:File/@Source, '.exe') or contains(wix:File/@Source, '.pdb'))]"/>
			</xsl:copy>
	</xsl:template>-->

	<xsl:template match="wix:Component">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="wix:File[not(contains(@Source, '.exe') or contains(@Source, '.pdb'))]"/>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="@*">
		<xsl:copy/>
	</xsl:template>

</xsl:stylesheet>
