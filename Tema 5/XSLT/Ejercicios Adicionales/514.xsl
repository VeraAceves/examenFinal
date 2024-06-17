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
        <datos>
            <cuentas>
                <xsl:apply-templates select="listado/cuenta"/>
            </cuentas>
            <fondos>
                <xsl:apply-templates select="listado/fondo"/>
            </fondos>
        </datos>
    </xsl:template>
    
    <xsl:template match="listado/cuenta">
        <cuenta>
            <xsl:attribute name="dnititular">
                <xsl:value-of select="titular/@dni"/>
            </xsl:attribute>
            <creacion>
                <xsl:value-of select="fechacreacion"/>
            </creacion>
            <titular>
                <xsl:value-of select="titular"/>
            </titular>
            <saldoactual>
                <xsl:value-of select="saldoactual"/>
                <xsl:value-of select="saldoactual/@moneda"/>
            </saldoactual>
        </cuenta>
    </xsl:template>
    
    <xsl:template match="listado/fondo">
        <fondo>
            <xsl:attribute name="cuentaasociada">
                <xsl:value-of select="cuentaasociada"/>
            </xsl:attribute>
            <cantidaddepositada>
                <xsl:value-of select="datos/cantidaddepositada"/>
            </cantidaddepositada>
            <moneda>
                <xsl:value-of select="datos/moneda"/>
            </moneda>
        </fondo>
    </xsl:template>
       
</xsl:stylesheet>