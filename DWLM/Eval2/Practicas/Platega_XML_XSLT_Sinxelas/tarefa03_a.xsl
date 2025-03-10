<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="xml"/>
    <xsl:template match="equipos">
       <discos>
         <xsl:apply-templates select="máquina/hardware/disco"/>
       </discos>
    </xsl:template>
    <xsl:template match="disco">
       <xsl:element name="disco">
          <xsl:attribute name="tecnoloxía">
             <xsl:value-of select="@tecnoloxía" />
          </xsl:attribute>
          <xsl:attribute name="capacidade">
             <xsl:value-of select="@capacidade" />
          </xsl:attribute>
          <xsl:attribute name="máquina">
             <xsl:value-of select="../../@nome" />
          </xsl:attribute>
       </xsl:element>
    </xsl:template>
</xsl:stylesheet>

