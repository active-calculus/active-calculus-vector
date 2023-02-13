<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="exercise[webwork[@source]]">
      <xsl:copy>
	<xsl:variable name="lab">
	  <xsl:call-template name="string-replace-all">
            <xsl:with-param name="text" select="./webwork/@source" />
            <xsl:with-param name="replace" select="'/'" />
            <xsl:with-param name="by" select="'__'" />
	  </xsl:call-template>
	</xsl:variable>
	
        <xsl:attribute name="label">
	  <xsl:value-of select="$lab"/>
	</xsl:attribute>
            <xsl:apply-templates select="@*|node()" />
          </xsl:copy>
    </xsl:template>

<!--Identity template copies content forward -->
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

<xsl:template name="string-replace-all">
    <xsl:param name="text" />
    <xsl:param name="replace" />
    <xsl:param name="by" />
    <xsl:choose>
        <xsl:when test="contains($text, $replace)">
            <xsl:value-of select="substring-before($text,$replace)"/>
            <xsl:value-of select="$by" />
            <xsl:call-template name="string-replace-all">
                <xsl:with-param name="text" 
                    select="substring-after($text,$replace)"/>
                <xsl:with-param name="replace" select="$replace"/>
                <xsl:with-param name="by" select="$by"/>
            </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="$text" />
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
    
</xsl:stylesheet>
