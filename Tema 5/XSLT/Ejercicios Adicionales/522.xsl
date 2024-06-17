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
        <formula1>
            <equipos>
                <xsl:for-each select="formula1/equipos/equipo">
                    <xsl:variable name="equipo" select="."/>
                    <equipo>
                        <nombre>
                            <xsl:value-of select="nombre"/>
                        </nombre>

                        <xsl:for-each select="/formula1/motoristas/motorista">
                            <xsl:if test="@id=$equipo/motorista/@id">
                                <motorista id="{@id}">
                                    <nombre>
                                        <xsl:value-of select="nombre"/>
                                    </nombre>
                                    <año_fundacion>
                                        <xsl:value-of select="año_fundacion"/>
                                    </año_fundacion>
                                </motorista>
                            </xsl:if>
                        </xsl:for-each>

                        <xsl:for-each select="temporada">
                            <xsl:variable name="temporada" select="."/>
                            <temporada>
                                <año>
                                    <xsl:value-of select="año"/>
                                </año>
                                <xsl:for-each select="/forumla1/pilotos/piloto">
                                    <xsl:if test="@id=$equipo/temporada[año=$temporada/año]/piloto/@id">
                                        <piloto id="{@id}">
                                            <nombre>
                                                <xsl:value-of select="nombre"/>
                                            </nombre>
                                            <edad>
                                                <xsl:value-of select="edad"/>
                                            </edad>
                                        </piloto>
                                    </xsl:if>
                                </xsl:for-each>
                            </temporada>
                        </xsl:for-each>
                    </equipo>
                </xsl:for-each>
            </equipos>
        </formula1>
    </xsl:template>

    

</xsl:stylesheet>