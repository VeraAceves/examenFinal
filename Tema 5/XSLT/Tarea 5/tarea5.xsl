<<<<<<< HEAD
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:array="http://www.w3.org/2005/xpath-functions/array"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="#all"
    expand-text="yes"
    version="3.0">

    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">

        <html>
          <head>
            <meta charset="UTF-8"/>
            <title>Tabla de artistas</title>
          </head>
          <body>
            <table>
              <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Año de nacimiento</th>
                <th>Año de fallecimiento</th>
                <th>País</th>
                <th>Página web</th>
              </tr>

              <xsl:apply-templates select="artistas/artista[nacimiento>1500]">
                <xsl:sort select="nacimiento"/>
              </xsl:apply-templates>

            </table>
          </body>
        </html>

      </xsl:template>
    
      <xsl:template match="artista">
        <tr>
          <td>
            <xsl:value-of select="@cod" />
          </td>
          <td>
            <xsl:value-of select="nombreCompleto" />
          </td>
          <td>
            <xsl:value-of select="nacimiento" />
          </td>
          <td>
            <xsl:choose>
              <xsl:when test="fallecimiento">
                <xsl:value-of select="fallecimiento" />
              </xsl:when>
              <xsl:otherwise>Desconocido</xsl:otherwise>
            </xsl:choose>
          </td>
          <td>
            <xsl:value-of select="pais" />
          </td>
          <td>
            <a target="blank" href="{fichaCompleta}">Saber más</a>
          </td>
        </tr>
      </xsl:template>

=======
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:array="http://www.w3.org/2005/xpath-functions/array"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="#all"
    expand-text="yes"
    version="3.0">

    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">

        <html>
          <head>
            <meta charset="UTF-8"/>
            <title>Tabla de artistas</title>
          </head>
          <body>
            <table>
              <tr>
                <th>Código</th>
                <th>Nombre</th>
                <th>Año de nacimiento</th>
                <th>Año de fallecimiento</th>
                <th>País</th>
                <th>Página web</th>
              </tr>

              <xsl:apply-templates select="artistas/artista[nacimiento>1500]">
                <xsl:sort select="nacimiento"/>
              </xsl:apply-templates>

            </table>
          </body>
        </html>

      </xsl:template>
    
      <xsl:template match="artista">
        <tr>
          <td>
            <xsl:value-of select="@cod" />
          </td>
          <td>
            <xsl:value-of select="nombreCompleto" />
          </td>
          <td>
            <xsl:value-of select="nacimiento" />
          </td>
          <td>
            <xsl:choose>
              <xsl:when test="fallecimiento">
                <xsl:value-of select="fallecimiento" />
              </xsl:when>
              <xsl:otherwise>Desconocido</xsl:otherwise>
            </xsl:choose>
          </td>
          <td>
            <xsl:value-of select="pais" />
          </td>
          <td>
            <a target="blank" href="{fichaCompleta}">Saber más</a>
          </td>
        </tr>
      </xsl:template>

>>>>>>> 92730c7be356a6f7efd960755b1be58f4009a1cf
</xsl:stylesheet>