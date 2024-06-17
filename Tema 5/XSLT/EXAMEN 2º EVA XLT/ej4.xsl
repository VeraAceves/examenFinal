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
                <meta charset="UTF-8"/>
                <title>Alumnos por módulo</title>
            </head>
            <body>
                <h1>
                    <xsl:for-each select="centro/ciclo[@id='ASIR']">
                        Módulos de <xsl:value-of select="@id"/>
                    </xsl:for-each>
                </h1>
                
                <h2>
                    <xsl:for-each select="centro/ciclo[@id='ASIR']">
                        <xsl:value-of select="módulo/@id"/> - 
                        <xsl:value-of select="módulo/nome"/>
                    </xsl:for-each>
                </h2>
                <table border='1'>
                    <tr><b>
                            <th>Código do alumno</th>
                            <th>Nome do alumno</th>
                            <th>Nota</th>
                        </b></tr>
                    <xsl:for-each select="centro/ciclo[@id='ASIR']/alumno">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"/>
                            </td>
                            <td>
                                <xsl:value-of select="nome_apelidos"/>
                            </td>
                            <td>
                                <xsl:value-of select="cursa[@id='MP0370']/@nota"/>
                            </td>                                                
                        </tr>
                    </xsl:for-each>   
                </table>
                
                <h2>
                    <xsl:for-each select="centro/ciclo[@id='ASIR']">
                        <xsl:value-of select="módulo[@id='MP0371']/@id"/> - 
                        <xsl:value-of select="módulo[@id='MP0371']/nome"/>
                    </xsl:for-each>
                </h2>
                <table border='1'>
                    <tr><b>
                            <td>Código do alumno</td>
                            <td>Nome do alumno</td>
                            <td>Nota</td>
                        </b></tr>
                    <xsl:for-each select="centro/ciclo[@id='ASIR']/alumno">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"/>
                            </td>
                            <td>
                                <xsl:value-of select="nome_apelidos"/>
                            </td>
                            <td>
                                <xsl:value-of select="cursa[@id='MP0371']/@nota"/>
                            </td>                                                
                        </tr>
                    </xsl:for-each>   
                </table>
                
                <h2>
                    <xsl:for-each select="centro/ciclo[@id='ASIR']">
                        <xsl:value-of select="módulo[@id='MP0373']/@id"/> - 
                        <xsl:value-of select="módulo[@id='MP0373']/nome"/>
                    </xsl:for-each>
                </h2>
                <table border='1'>
                    <tr><b>
                            <td>Código do alumno</td>
                            <td>Nome do alumno</td>
                            <td>Nota</td>
                        </b></tr>
                    <xsl:for-each select="centro/ciclo[@id='ASIR']/alumno">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"/>
                            </td>
                            <td>
                                <xsl:value-of select="nome_apelidos"/>
                            </td>
                            <td>
                                <xsl:value-of select="cursa[@id='MP0373']/@nota"/>
                            </td>                                                
                        </tr>
                    </xsl:for-each>   
                </table>
                
                <h2>
                    <xsl:for-each select="centro/ciclo[@id='ASIR']">
                        <xsl:value-of select="módulo[@id='MP0375']/@id"/> - 
                        <xsl:value-of select="módulo[@id='MP0375']/nome"/>
                    </xsl:for-each>
                </h2>
                <table border='1'>
                    <tr><b>
                            <td>Código do alumno</td>
                            <td>Nome do alumno</td>
                            <td>Nota</td>
                        </b></tr>
                    <xsl:for-each select="centro/ciclo[@id='ASIR']/alumno">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"/>
                            </td>
                            <td>
                                <xsl:value-of select="nome_apelidos"/>
                            </td>
                            <td>
                                <xsl:value-of select="cursa[@id='MP0375']/@nota"/>
                            </td>                                                
                        </tr>
                    </xsl:for-each>   
                </table>
                
                <h1>
                    <xsl:for-each select="centro/ciclo[@id='DAW']">
                        Módulos de <xsl:value-of select="@id"/>
                    </xsl:for-each>
                </h1>
                
                <h2>
                    <xsl:for-each select="centro/ciclo[@id='DAW']">
                        <xsl:value-of select="módulo/@id"/> - 
                        <xsl:value-of select="módulo/nome"/>
                    </xsl:for-each>
                </h2>
                <table border='1'>
                    <tr><b>
                            <td>Código do alumno</td>
                            <td>Nome do alumno</td>
                            <td>Nota</td>
                        </b></tr>
                    <xsl:for-each select="centro/ciclo[@id='DAW']/alumno">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"/>
                            </td>
                            <td>
                                <xsl:value-of select="nome_apelidos"/>
                            </td>
                            <td>
                                <xsl:value-of select="cursa[@id='MP0373']/@nota"/>
                            </td>                                                
                        </tr>
                    </xsl:for-each>   
                </table>
                
                <h2>
                    <xsl:for-each select="centro/ciclo[@id='DAW']">
                        <xsl:value-of select="módulo[@id='MP0484']/@id"/> - 
                        <xsl:value-of select="módulo[@id='MP0484']/nome"/>
                    </xsl:for-each>
                </h2>
                <table border='1'>
                    <tr><b>
                            <td>Código do alumno</td>
                            <td>Nome do alumno</td>
                            <td>Nota</td>
                        </b></tr>
                    <xsl:for-each select="centro/ciclo[@id='DAW']/alumno">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"/>
                            </td>
                            <td>
                                <xsl:value-of select="nome_apelidos"/>
                            </td>
                            <td>
                                <xsl:value-of select="cursa[@id='MP0484']/@nota"/>
                            </td>                                                
                        </tr>
                    </xsl:for-each>   
                </table>
                
                <h2>
                    <xsl:for-each select="centro/ciclo[@id='DAW']">
                        <xsl:value-of select="módulo[@id='MP0485']/@id"/> - 
                        <xsl:value-of select="módulo[@id='MP0485']/nome"/>
                    </xsl:for-each>
                </h2>
                <table border='1'>
                    <tr><b>
                            <td>Código do alumno</td>
                            <td>Nome do alumno</td>
                            <td>Nota</td>
                        </b></tr>
                    <xsl:for-each select="centro/ciclo[@id='daw']/alumno">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"/>
                            </td>
                            <td>
                                <xsl:value-of select="nome_apelidos"/>
                            </td>
                            <td>
                                <xsl:value-of select="cursa[@id='MP0485']/@nota"/>
                            </td>                                                
                        </tr>
                    </xsl:for-each>   
                </table>
            </body>
        </html>
    </xsl:template>
    
    
    
</xsl:stylesheet>