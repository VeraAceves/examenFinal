<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Datos por edificio</title>
            </head>
            <body>

                <h1><strong>Edificio A</strong></h1>
                <table border="1">
                    <xsl:for-each select="inventario/producto">
                        <xsl:if test="lugar/@edificio='A'">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>   
                                 <td>
                                    <xsl:if test="peso[@unidad='kg']">
                                        <xsl:value-of select="peso"/> Kg
                                    </xsl:if>
                                    <xsl:if test="peso[@unidad='g']">
                                        <xsl:value-of select="peso * 0.001"/> Kg
                                    </xsl:if>
                                </td>
                                <td>
                                    <xsl:value-of select="lugar/@edificio"/>
                                    <xsl:value-of select="lugar/aula"/>
                                </td>   
                            </tr>                     
                        </xsl:if>
                    </xsl:for-each> 
                </table>

                <h1>Edificio B</h1>
                <table border="1">
                    <xsl:for-each select="inventario/producto">
                        <xsl:if test="lugar/@edificio='B'">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>   
                                 <td>
                                    <xsl:if test="peso[@unidad='kg']">
                                        <xsl:value-of select="peso"/> Kg
                                    </xsl:if>
                                    <xsl:if test="peso[@unidad='g']">
                                        <xsl:value-of select="peso * 0.001"/> Kg
                                    </xsl:if>
                                </td>
                                <td>
                                    <xsl:value-of select="lugar/@edificio"/>
                                    <xsl:value-of select="lugar/aula"/>
                                </td>   
                            </tr>                     
                        </xsl:if>
                    </xsl:for-each> 
                </table>
                
            </body>
        </html>
    </xsl:template>

    

</xsl:stylesheet>