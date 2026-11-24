<?xml version="1.0" encoding="UTF-8" ?>
<!-- **********************************************************************-->

<!-- ACMV customizations for HTML runs -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:pi="http://pretextbook.org/2020/pretext/internal" 
                version="1.0">

<!-- Assumes current file is in mathbook/user, so it must be copied there -->
<xsl:import href="./core/pretext-html.xsl" />
<!-- Assumes next file can be found in mathbook/user, so it must be copied there -->
<xsl:import href="acm-common.xsl" />

<!-- Deal with footnotes from #url -->
<xsl:template match="fn[@pi:url]" />
<xsl:template match="exercise/answer|task/answer|webwork-reps/static/answer" />
</xsl:stylesheet>
