<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="UTF-8" indent="yes" method="xml"/>
	<xsl:attribute-set name="atr_máquina">
  <xsl:attribute name="tipo">
	  <xsl:value-of select="hardware/tipo"/>
	 </xsl:attribute>
	 <xsl:attribute name="fabricante">
	  <xsl:value-of select="hardware/fabricante"/>
	 </xsl:attribute>
	 <xsl:attribute name="procesador">
	  <xsl:value-of select="concat(hardware/procesador/@marca, ' ', hardware/procesador/@num_nucleos, ' núcleos a ', hardware/procesador/@velocidade, ' GHz')" />
	 </xsl:attribute>
	 <xsl:attribute name="discos">
	  <xsl:value-of select="concat(count(hardware/disco), ' con ', sum(hardware/disco/@capacidade), 'GB') "/>
	 </xsl:attribute>
	</xsl:attribute-set>
	<xsl:template match="equipos">
	 <xsl:element name="máquinas">
	  <xsl:apply-templates select="máquina"/>
	 </xsl:element>
	</xsl:template>
	<xsl:template match="máquina">
	 <xsl:element name="máquina" use-attribute-sets="atr_máquina" />
	</xsl:template>
</xsl:stylesheet>

