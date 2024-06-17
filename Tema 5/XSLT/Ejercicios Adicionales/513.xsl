<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Listas</title>
            </head>
            <body>
                <ol>
                    <xsl:for-each select="//libro">
                        <xsl:if test="autores/autor/@nacimiento > 1900">
                            <li><xsl:value-of select="titulo"/></li>
                        </xsl:if>
                    </xsl:for-each> 
                </ol>

                <ol>
                    <xsl:for-each select="catalogo/libro/autores/autor">
                        <xsl:sort select="." order="descending"/>
                        <li>
                            <xsl:value-of select="."/>
                        </li>
                    </xsl:for-each>
                </ol>

                <ul>
                    <xsl:for-each select="catalogo/libro/autores/autor">
                        <xsl:if test="@nacimiento &gt; 1700">
                            <li>
                                <xsl:value-of select="."/>
                            </li>
                        </xsl:if>
                    </xsl:for-each>
                </ul>
            </body>
        </html>  
    </xsl:template>

</xsl:stylesheet>