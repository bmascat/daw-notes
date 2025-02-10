<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="libro">
    <xsl:element name="p">
      <xsl:value-of select="autor"/>
      <xsl:text> escribió "</xsl:text>
      <xsl:value-of select="titulo"/>
      <xsl:text>"</xsl:text>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
