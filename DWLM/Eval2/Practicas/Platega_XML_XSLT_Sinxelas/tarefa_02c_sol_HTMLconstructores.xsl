<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output encoding="UTF-8" method="html"/>
    <xsl:template match="/">
      <xsl:element name="html">
          <xsl:element name="head">
                <xsl:element name="title">
                <xsl:text>Cliente</xsl:text> 
              </xsl:element>
         </xsl:element>
         <xsl:element name="body">
          <xsl:element name="p">
              <xsl:text>Cliente:</xsl:text>
              <xsl:value-of select="//cliente/@cod"/>
          </xsl:element>
          <xsl:element name="p">
              <xsl:text>Número de produtos:</xsl:text>
              <xsl:value-of select="count(//produto)"/>
          </xsl:element>
        </xsl:element>
      </xsl:element>
  </xsl:template>
</xsl:stylesheet>