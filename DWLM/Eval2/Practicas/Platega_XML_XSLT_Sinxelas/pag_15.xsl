<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes" />
<xsl:template match="/módulo/profesor">
<xsl:element name="Profesor"/>
</xsl:template>
<xsl:template match="/módulo">
<xsl:element name="Módulo"/>
</xsl:template>
</xsl:stylesheet>