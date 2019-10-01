<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:h="http://www.w3.org/1999/xhtml"> 

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    table {border: 0px; border-collapse: collapse;}
                    th, td {border: 1px solid black; margin: 0px; padding: 8px;}
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Tagname</th>
                        <th align="center">Value</th>
                    </tr>
                    <xsl:apply-templates />
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="TAGLIST">
        <xsl:for-each select="TAG">
            <tr>
                <td>
                    <xsl:value-of select="NAME"/>
                </td>
                <td align="center">
                    <xsl:value-of select="VALUE"/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>