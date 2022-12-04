<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html >
<head>
  <meta charset="UTF-8"/>
  <title>My plants</title>
</head>
<body>
  <h1>Specimens I have found:</h1>
  <table style="width:100%;" border="1">
    <tr>
        <th>Latitude</th>
        <th>Longitude</th>
        <th>Planted By</th>
        <th>Description</th>
      </tr>
    <xsl:for-each select="/plant/specimens/specimen">
      <tr>
        <td><xsl:value-of select="latitude" /></td>
        <td><xsl:value-of select="longitude" /></td>
        <td><xsl:value-of select="planted_by" /></td>
        <td><xsl:value-of select="description" /></td>
      </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>