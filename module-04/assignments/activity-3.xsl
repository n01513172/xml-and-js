<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body>
<h1>Products Table</h1>
<table border="2">
<tr bgcolor="#0008B">
<th>Product Name</th>
<th>Manufacturer Name</th>
<th>Description</th>
<th>Market Prices</th>
<th>ProductItems</th>
</tr>
<xsl:for-each select="products/product">
<tr>
<td>
<xsl:value-of select="productName"/>
</td>
<td>
<xsl:value-of select="manufacturer"/>
</td>
<td>
<xsl:value-of select="description"/>
</td>
<td>
<xsl:value-of select="prices"/>
</td>
<td>
<xsl:value-of select="productItems"/>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>