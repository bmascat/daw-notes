<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  	<xsl:output encoding="UTF-8" indent="yes" method="xml"/>
    
    <xsl:template match="/">
        
        <alumnos universidad ="{universidad/nombre}" numTitulos = "{count(universidad/carreras//carrera)}" numCreditos = "{sum(universidad//carrera/creditos)}" numAlumnos = "{count(universidad//alumno)}" >

            <observaciones> Estadistística asignaturas por alumnos </observaciones>
            <xsl:for-each select="universidad/alumnos/alumno">
                    <alumno codigoAlumnos="{@id}" codigoGrado="{estudios/carrera/@codigo}" numAsignaturas ="{count(estudios//asignatura)}"/>
            </xsl:for-each>

        </alumnos>
    </xsl:template>
    
</xsl:stylesheet>