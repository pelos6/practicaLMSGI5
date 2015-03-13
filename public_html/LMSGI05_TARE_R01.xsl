<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html>
            <body>
                <table>
                     <tr>
                        <th colspan="2">Datos</th>
                        <th colspan="4">Notas</th>      
                    </tr>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>       
                        <th>Tareas</th>
                        <th>Cuestionarios</th>     
                        <th>Examen</th>
                        <th>Final</th>
                        <th>Nota en Letra</th>
                    </tr>
                    <xsl:for-each select="notas/alumno[@convocatoria='Junio']">
                        <tr>
                            <td>
                                <xsl:value-of select="@convocatoria"/>
                                <!--<xsl:value-of select="nombre"/>-->
                            </td>
                            <td>
                                <xsl:value-of select="apellidos"/>
                            </td>
                            <td>
                                <xsl:value-of select="tareas"/>
                            </td>
                            <td>
                                <xsl:value-of select="cuestionarios"/>
                            </td>
                            <td>
                                <xsl:value-of select="examen"/>
                            </td>
                            <td>
                                <xsl:value-of select="final"/>
                            </td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="final >= 9">
                                        SOBRESALIENTE
                                    </xsl:when>
                                    <xsl:when test="final > 7">
                                        NOTABLE
                                    </xsl:when>
                                    <xsl:when test="final > 6">
                                        BIEN
                                    </xsl:when>
                                    <xsl:when test="final > 5">
                                        SUFICIENTE
                                    </xsl:when>
                                    <xsl:otherwise>
                                        INSUFICIENTE
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                        <!--</xsl:if>-->
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>