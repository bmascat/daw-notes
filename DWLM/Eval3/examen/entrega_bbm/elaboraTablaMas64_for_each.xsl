<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="UTF-8" indent="yes" method="html" />

    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <caption>Personal >=65 años </caption>
                    <thead>
                        <tr>
                            <th>
                                Codigo
                            </th>
                            <th>
                                Nombre
                            </th>
                            <th>
                                Edad
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="personas/persona[edad>=65]">
                            <xsl:sort select="edad" data-type="number" order="descending" />
                            <tr>
                                <td>
                                    <xsl:value-of select="@codPER" />
                                </td>
                                <td>
                                    <xsl:value-of select="nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="edad" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>   
            </body>
        </html>  
    </xsl:template>

</xsl:stylesheet>