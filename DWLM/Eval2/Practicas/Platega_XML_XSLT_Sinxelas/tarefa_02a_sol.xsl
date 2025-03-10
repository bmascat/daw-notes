<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="venda">
<xsl:element name="{cliente/@cod}">
<xsl:attribute name="num_produtos">
<xsl:value-of select="count(produtos/produto)"></xsl:value-of>
</xsl:attribute>
</xsl:element>
</xsl:template>
</xsl:stylesheet>