<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/ciclo">
<xsl:element name="{concat(name(), '_asir')}">
<xsl:attribute name="duración">2000 horas</xsl:attribute>
</xsl:element>
</xsl:template>
</xsl:stylesheet>