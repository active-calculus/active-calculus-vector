<?xml version="1.0"?>
<xsl:stylesheet 
version="1.0"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="@*|node()">
 <xsl:copy>
  <xsl:apply-templates select="@*|node()"/>
 </xsl:copy>
</xsl:template>

<xsl:template match="section/introduction">
  <xsl:element name="subsection">
    <xsl:element name="title">Introduction</xsl:element>
  <xsl:apply-templates select="@*|node()"/>
 </xsl:element>
</xsl:template>

<!-- Clobber the permids -->
<xsl:template match="@permid"></xsl:template>

</xsl:stylesheet>
