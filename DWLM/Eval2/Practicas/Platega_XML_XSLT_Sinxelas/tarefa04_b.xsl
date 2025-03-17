<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output encoding="UTF-8" indent="yes" method="html"/>
 <xsl:template match="/">
  <html>
   <head>
    <title>Horario <xsl:value-of select="horario/@grupo" /> <xsl:value-of select="horario/@ciclo" /></title>
   </head>
   <body>
    <h1>Asignaturas por día</h1>
    <ul>
      <xsl:apply-templates select="horario/dia" />
    </ul>
   </body>
  </html>
 </xsl:template>
 <xsl:template match="dia">
   <li>Día <xsl:value-of select="@num" /></li>
   <ul>
     <xsl:apply-templates select="materia" />
   </ul>
</xsl:template>
 <xsl:template match="materia">
   <li><xsl:value-of select="@nome" /></li>
 </xsl:template>
</xsl:stylesheet>
