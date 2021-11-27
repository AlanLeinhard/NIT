<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <table border="1">
            <tr bgcolor="#CCCCCC"></tr>
            <xsl:for-each select="block/item">
                <xsl:sort select="finish" order="ascending"/>
                <tr>
                    <xsl:if test="position() mod 2 = 0">
                        <xsl:attribute name="bgcolor">#CCCCCC</xsl:attribute>
                    </xsl:if>

                    <td width="18">
                        <xsl:value-of select="id_kl_ab"/>
                    </td>
                    <td width="220">
                        <xsl:value-of select="id_klient"/>
                    </td>
                    <td width="105">
                        <xsl:value-of select="id_abonem"/>
                    </td>
                    <td width="105">
                        <xsl:value-of select="summa"/>
                    </td>
                    <td width="105">
                        <xsl:value-of select="start"/>
                    </td>
                    <td width="105">
                        <xsl:value-of select="finish"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>
