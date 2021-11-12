<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <table border="1">
            <tr bgcolor="#CCCCCC"></tr>
            
            <xsl:for-each select="block/item">
                <xsl:sort select="id_dis" order="ascending"/>
                <tr>

                    <xsl:choose>
                        <xsl:when test="hour &gt; 100">
                            <xsl:attribute name="bgcolor">#FFDDFF</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="hour &gt; 50 and hour &lt; 100">
                            <xsl:attribute name="bgcolor">#DDFFDA</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="hour &lt; 50">
                            <xsl:attribute name="bgcolor">#CCACCC</xsl:attribute>
                        </xsl:when>
                    </xsl:choose>

                    <xsl:if test="hour &gt; 100">


                        <td width="18">
                            <xsl:value-of select="id_dis"/>
                        </td>
                        <td width="220">
                            <xsl:value-of select="name"/>
                        </td>
                        <td width="105">
                            <xsl:value-of select="prepod"/>
                        </td>
                        <td width="105">
                            <xsl:value-of select="spec"/>
                        </td>
                        <td width="105">
                            <xsl:value-of select="hour"/>
                        </td>
                    </xsl:if>

                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>
