﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="libro">
    <xsl:element name="h1">
      <xsl:value-of select="autor"/>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
