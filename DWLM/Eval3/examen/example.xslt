<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Catálogo de Biblioteca</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                        background-color: #f5f5f5;
                    }
                    h1 {
                        color: #2c3e50;
                        text-align: center;
                    }
                    .libro {
                        background-color: white;
                        border-radius: 5px;
                        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                        margin-bottom: 20px;
                        padding: 15px;
                    }
                    .titulo {
                        color: #3498db;
                        font-size: 1.2em;
                        margin-bottom: 5px;
                    }
                    .autor {
                        color: #7f8c8d;
                        font-style: italic;
                    }
                    .detalles {
                        margin-top: 10px;
                    }
                    .categoria {
                        background-color: #e74c3c;
                        color: white;
                        display: inline-block;
                        font-size: 0.8em;
                        padding: 3px 8px;
                        border-radius: 3px;
                    }
                    .disponible {
                        color: green;
                        font-weight: bold;
                    }
                    .no-disponible {
                        color: red;
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <h1>Catálogo de Biblioteca</h1>
                <xsl:apply-templates select="biblioteca/libro"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="libro">
        <div class="libro">
            <div class="categoria">
                <xsl:value-of select="@categoria"/>
            </div>
            <h2 class="titulo">
                <xsl:value-of select="titulo"/>
            </h2>
            <p class="autor">
                <xsl:value-of select="autor"/>
            </p>
            <div class="detalles">
                <p>Año: <xsl:value-of select="anio"/></p>
                <p>Precio: $<xsl:value-of select="precio"/></p>
                <p>
                    Estado: 
                    <xsl:choose>
                        <xsl:when test="disponible = 'true'">
                            <span class="disponible">Disponible</span>
                        </xsl:when>
                        <xsl:otherwise>
                            <span class="no-disponible">No disponible</span>
                        </xsl:otherwise>
                    </xsl:choose>
                </p>
            </div>
        </div>
    </xsl:template>
    
</xsl:stylesheet>