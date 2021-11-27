<?xml version="1.0" encoding="WINDOWS-1251" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <table border="1">
            <tr bgcolor="#CCCCCC">
                <td align="center">
                    <strong>Имя</strong>
                </td>
                <td align="center">
                    <strong>Информация</strong>
                </td>
                <td align="center">
                    <strong>Пояснение</strong>
                </td>
            </tr>
            <xsl:for-each select="block/item">
                <tr bgcolor="#F5F5F5">
                    <td>
                        <xsl:value-of select="name"/>
                    </td>
                    <td align="left">
                        <xsl:value-of select="info"/>
                    </td>
                    <td>
                        <xsl:value-of select="dop"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>
