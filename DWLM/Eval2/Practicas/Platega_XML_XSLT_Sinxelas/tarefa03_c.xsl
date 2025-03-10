<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        <xsl:template match="/">
       <html>
          <head>
             <title>Táboa máquinas</title>
          </head>
          <body>
             <h1>Táboa das máquinas</h1>
             <table border="1">
                <tr>
                   <th>Máquina</th>
                   <th>Procesador</th>
                   <th>Memoria</th>
                   <th>Disco(s)</th>
                </tr>
                <xsl:apply-templates select="equipos/máquina" />
              </table>
          </body>
       </html>
    </xsl:template>
    <xsl:template match="máquina">
       <tr>
          <td><a href="http://{config/IP}"><xsl:value-of select="@nome" /></a></td>
          <td><xsl:value-of select="hardware/procesador/@marca" />-<xsl:value-of select="hardware/procesador/text()" /></td>
          <td><xsl:value-of select="hardware/memoria" />GB <xsl:value-of select="hardware/memoria/@tecnoloxía" /></td>
          <td><ul><xsl:apply-templates select="hardware/disco" /></ul></td>
       </tr>
    </xsl:template>
    <xsl:template match="disco">
       <li><xsl:value-of select="@capacidade" />GB (<xsl:value-of select="@tecnoloxía" />)</li>
    </xsl:template>
</xsl:stylesheet>
