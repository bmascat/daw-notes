<?xml version="1.0" encoding="utf-8"?>
<!-- código recogido en página 13 -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/ciclo">
<xsl:element name="{name()}">
<xsl:attribute name="nome">
<xsl:value-of select="profesor/text()"/>
</xsl:attribute>
</xsl:element>
</xsl:template>
</xsl:stylesheet>