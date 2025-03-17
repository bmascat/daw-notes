<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml"/>
    <xsl:attribute-set name="atr_materia">
       <xsl:attribute name="hora"><xsl:value-of select="@hora" /></xsl:attribute>
       <xsl:attribute name="nome"><xsl:value-of select="@nome" /></xsl:attribute>
    </xsl:attribute-set>
    <xsl:template match="/">
       <materias>
          <xsl:apply-templates select="horario/dia" />
       </materias>
    </xsl:template>
    <xsl:template match="dia">
       <xsl:element name="dia">
          <xsl:attribute name="num">
             <xsl:value-of select="@num" />
          </xsl:attribute>
          <xsl:apply-templates select="materia" />
       </xsl:element>
    </xsl:template>
    <xsl:template match="materia">
       <xsl:element name="materia" use-attribute-sets="atr_materia">
       </xsl:element>
    </xsl:template>
</xsl:stylesheet>
