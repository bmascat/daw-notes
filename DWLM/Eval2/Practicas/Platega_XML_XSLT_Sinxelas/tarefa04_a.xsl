<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output encoding="UTF-8" indent="yes" method="html"/>
 <xsl:template match="/">
  <html>
   <head>
    <title>Horario <xsl:value-of select="horario/@grupo" /> <xsl:value-of select="horario/@ciclo" /></title>
   </head>
   <body>
    <h1>Horario <xsl:value-of select="horario/@grupo" /> <xsl:value-of select="horario/@ciclo" />, ano <xsl:value-of select="horario/@ano" /></h1>
    <table border="1">
      <tr>
        <th></th>
        <th>Inicio</th>
        <th>Fin</th>
      </tr>
      <xsl:apply-templates select="horario/horas/hora" />
    </table>             
   </body>
  </html>
 </xsl:template>
 <xsl:template match="hora">
  <tr>
    <th><xsl:value-of select="@id" /> Hora</th>
    <td><xsl:value-of select="inicio" /></td>
    <td><xsl:value-of select="fin" /></td>
  </tr>
 </xsl:template>
</xsl:stylesheet>
