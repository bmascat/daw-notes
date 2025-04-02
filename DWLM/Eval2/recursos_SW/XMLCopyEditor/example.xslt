<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h1>Biblioteca</h1>
                <xsl:for-each select="biblioteca/libro">
                    <div>
                        <h2><xsl:value-of select="titulo"/></h2>
                        <p>Autor: <xsl:value-of select="autor"/></p>
                        <p>Precio: <xsl:value-of select="precio"/>€</p>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
