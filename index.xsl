<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="movielibrary">
        <html>
            <head>
                <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;700;display=swap" rel="stylesheet" />
                <link rel="stylesheet" href="style.css" />
            </head>
            <body>
                <h1>Movie Library</h1>
                <table style="width: 70%;">
                    <thead>
                        <tr bgcolor="lightgray">
                            <th>Name</th>
                            <th>Actor</th>
                            <th>Director</th>
                            <th>Rating</th>
                            <th>Release Date</th>
                            <th>Cost</th>
                            <th>Budget</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="movie">

                            <xsl:sort select="rat"
                                order="descending" />
                            <tr>
                                <td>
                                    <xsl:value-of select="name"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="act"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="dir"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="rat"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="rd"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="cost"></xsl:value-of>
                                </td>
                                <xsl:choose>
                                    <xsl:when test="cost &gt; 30000000">
                                        <td>High</td>
                                    </xsl:when>
                                    <xsl:when test="cost &gt; 10000000 ">
                                        <td>Median</td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>Low</td>
                                    </xsl:otherwise>
                                </xsl:choose>

                            </tr>

                        </xsl:for-each>
                        <tr></tr>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>