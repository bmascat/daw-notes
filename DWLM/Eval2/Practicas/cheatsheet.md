# XPATH y XSLT Cheatsheet

## XPATH - Expresiones de Ruta

### Selectores Básicos
```xpath
elemento           # Selecciona elementos con ese nombre
*                 # Cualquier elemento
@nombre           # Atributo específico
@*                # Cualquier atributo
texto()           # Nodos de texto
node()            # Cualquier tipo de nodo
```

### Rutas
```xpath
/                 # Ruta absoluta desde la raíz
//                # Selecciona elementos en cualquier nivel
.                 # Nodo actual
..                # Nodo padre
/elemento         # Elemento hijo directo de la raíz
//elemento        # Elemento en cualquier nivel
elemento/hijo     # Hijo directo
elemento//hijo    # Hijo en cualquier nivel inferior
```

### Predicados
```xpath
[1]               # Primer elemento
[last()]          # Último elemento
[position()=n]    # Elemento en posición n
[@atrib='valor']  # Elementos con atributo específico
[elemento='valor']# Elementos con hijo específico
```

### Operadores
```xpath
|                 # Unión de conjuntos
and               # Y lógico
or                # O lógico
=, !=             # Igual, distinto
<, <=, >, >=      # Comparaciones
+, -, *, div      # Operaciones aritméticas
```

### Funciones Comunes
```xpath
count()           # Cuenta nodos
sum()             # Suma valores
contains()        # Busca subcadena
starts-with()     # Comienza con
substring()       # Extrae parte de cadena
translate()       # Reemplaza caracteres
normalize-space() # Normaliza espacios
not()             # Negación
```

## XSLT - Transformaciones

### Estructura Básica XSLT
```xml
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml/html" indent="yes"/>
    <xsl:template match="/">
        <!-- Contenido -->
    </xsl:template>
</xsl:stylesheet>
```

### Elementos XSLT Principales
```xml
<xsl:template>              # Define plantillas
<xsl:value-of>             # Extrae valor
<xsl:for-each>             # Itera elementos
<xsl:if>                   # Condiciones
<xsl:choose>               # Switch
<xsl:when>                 # Case del switch
<xsl:otherwise>            # Default del switch
<xsl:sort>                 # Ordenamiento
<xsl:apply-templates>      # Aplica plantillas
```

### Atributos Comunes
```xml
select=""         # Selecciona nodos
match=""          # Patrón de coincidencia
mode=""          # Modo de procesamiento
test=""          # Condición en if/when
order=""         # Orden (ascending/descending)
```

### Transformación XML a HTML

#### Estructura Básica
```xml
<xsl:template match="/">
    <html>
        <head>
            <title>Título</title>
        </head>
        <body>
            <xsl:apply-templates/>
        </body>
    </html>
</xsl:template>
```

#### Ejemplo Tabla HTML
```xml
<xsl:template match="elementos">
    <table>
        <tr>
            <th>Título</th>
            <th>Autor</th>
        </tr>
        <xsl:for-each select="elemento">
            <tr>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="autor"/></td>
            </tr>
        </xsl:for-each>
    </table>
</xsl:template>
```

### Transformación XML a XML

#### Estructura Básica
```xml
<xsl:output method="xml" indent="yes"/>
<xsl:template match="/">
    <nuevo-root>
        <xsl:apply-templates/>
    </nuevo-root>
</xsl:template>
```

#### Manejo de Atributos
```xml
<!-- Forma directa -->
<elemento atributo="{expresión-xpath}"/>

<!-- Con xsl:attribute -->
<elemento>
    <xsl:attribute name="nombre">
        <xsl:value-of select="expresión"/>
    </xsl:attribute>
</elemento>
```

### Técnicas Avanzadas

#### Agrupación
```xml
<xsl:for-each select="grupo[not(./valor = preceding::grupo/valor)]">
    <grupo>
        <xsl:for-each select="//grupo[./valor = current()/valor]">
            <!-- Elementos del grupo -->
        </xsl:for-each>
    </grupo>
</xsl:for-each>
```

#### Ordenamiento
```xml
<xsl:sort select="campo" 
          order="ascending"
          data-type="text/number"/>
```

#### Condicionales
```xml
<xsl:choose>
    <xsl:when test="condición1">
        <!-- resultado 1 -->
    </xsl:when>
    <xsl:when test="condición2">
        <!-- resultado 2 -->
    </xsl:when>
    <xsl:otherwise>
        <!-- resultado por defecto -->
    </xsl:otherwise>
</xsl:choose>
```

### Buenas Prácticas

1. **Rutas XPath**
   - Usar rutas específicas (`biblioteca/libro` vs `//libro`)
   - Evitar rutas absolutas cuando sea posible
   - Usar predicados para filtrar con precisión

2. **Plantillas**
   - Usar plantillas nombradas para código reutilizable
   - Separar la lógica en plantillas diferentes
   - Usar modos para diferentes contextos

3. **Organización**
   - Mantener una estructura clara
   - Comentar secciones complejas
   - Usar indentación consistente

4. **Rendimiento**
   - Evitar procesamiento redundante
   - Usar keys para búsquedas eficientes
   - Minimizar el uso de //

### Ejemplos Comunes

#### Listado con Filtro
```xml
<xsl:template match="libros">
    <ul>
        <xsl:for-each select="libro[precio &lt; 20]">
            <xsl:sort select="titulo"/>
            <li><xsl:value-of select="titulo"/></li>
        </xsl:for-each>
    </ul>
</xsl:template>
```

#### Tabla con Totales
```xml
<xsl:template match="ventas">
    <table>
        <xsl:for-each select="venta">
            <tr>
                <td><xsl:value-of select="producto"/></td>
                <td><xsl:value-of select="importe"/></td>
            </tr>
        </xsl:for-each>
        <tr>
            <td>Total:</td>
            <td><xsl:value-of select="sum(//importe)"/></td>
        </tr>
    </table>
</xsl:template>
```
```