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
        <usuarios>
            <xsl:for-each select="//usuario">
                <usuario id='{@id}' nick='{nick}'>
                    
                    <nombre>
                        <xsl:value-of select="nombre"/>
                    </nombre>
                    
                    <apps>
                        <xsl:for-each select="apps/app">
                            <app id="@id" pegi="{/android/aplicaciones/app[@id=current()/@id]/pegi}">
                                <xsl:value-of select="/android/aplicaciones/app[@id=current()/@id]/titulo"/>
                            </app>
                        </xsl:for-each>
                    </apps>
                </usuario>
            </xsl:for-each>
        </usuarios>
    </xsl:template>     
</xsl:stylesheet>