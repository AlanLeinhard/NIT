<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <table border="1">
            <tr bgcolor="#CCCCCC">
                <td align="center">
                    <strong>Поле</strong>
                </td>
                <td align="center">
                    <strong>Клиент</strong>
                </td>
                <td align="center">
                    <strong>ID абонемента</strong>
                </td>
                <td align="center">
                    <strong>Стоимость</strong>
                </td>
                <td align="center">
                    <strong>Старт</strong>
                </td>
                <td align="center">
                    <strong>Конец</strong>
                </td>
            </tr>
            <xsl:for-each select="block/item">
                <xsl:sort order="descending" select="start"/>
                <xsl:sort select="id_klient" order="descending"/>

                <tr bgcolor="#F5F5F5">
                    <td>
                        <xsl:value-of select="id_kl_ab"/>
                    </td>
                    <td>
                        <xsl:value-of select="id_klient"/>
                    </td>
                    <td>
                        <xsl:value-of select="id_abonem"/>
                    </td>
                    <td>
                        <xsl:value-of select="summa"/>
                    </td>
                    <td>
                        <xsl:value-of select="start"/>
                    </td>
                    <td>
                        <xsl:value-of select="finish"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>
