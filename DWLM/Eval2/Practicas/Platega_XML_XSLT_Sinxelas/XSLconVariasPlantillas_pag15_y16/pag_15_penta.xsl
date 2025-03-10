<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>
<!--<xsl:template match="profesor">
<Profesor/>
</xsl:template> -->
<xsl:template match="módulo">
<Módulo/>
<xsl:apply-templates/>
</xsl:template>
<xsl:template match="/">
soy el nodo raiz
<xsl:apply-templates/>
</xsl:template>
</xsl:stylesheet>