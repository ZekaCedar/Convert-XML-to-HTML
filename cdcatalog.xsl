<?xml version="1.0" encoding="UTF-8"?>
<!-- CONTAINS THE TRANSFORMATION TEMPLATE -->
<!-- REFERENCED IN cdcatalog.xml -->

<!-- This is the Root Document that declares to be an XSL style sheet -->
<!-- xmlns:xsl="http://www.w3.org/1999/XSL/Transform" points to the official W3C XSLT namespace. -->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>My CD Collection</h2>
  <table border="1" style="width:100%;">
    <tr bgcolor="#9acd32">
      <th>Title</th>
      <th>Artist</th>
      <th>Price</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <xsl:if test="price > 10">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
      <td><xsl:value-of select="price"/></td>
    </tr>
    </xsl:if>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>