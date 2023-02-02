<?xml version="1.0" encoding="UTF-8"?>
<!-- xsl stylesheet declaration with xsl namespace: 
Namespace tells the xlst processor about which 
element is to be processed and which is used for output purpose only 
--> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">   
<!-- xsl template declaration:  
template tells the xlst processor about the section of xml 
document which is to be formatted. It takes an XPath expression. 
In our case, it is matching document root element and will 
tell processor to process the entire document with this template. 
--> 
  <xsl:template match="/"> 
    <!-- HTML tags 
      Used for formatting purpose. Processor will skip them and browser 
      will simply render them. 
    --> 

    <html> 
      <body> 
        <h2>Products</h2> 
        <h2>Table 1</h2>

        <table border="3"> 
          <tr bgcolor="lightgreen" color="black" font-weight="bold"> 
            <th>Product Name</th> 
            <th>Manufacturer id</th> 
            <th>Description</th> 
            <th>USD price</th> 
          </tr> 

          <!-- for-each processing instruction 
            Looks for each element matching the XPath expression 
          --> 
          <xsl:for-each select="products/product"> 
            <xsl:if test="@shippable='true'">
            <tr> 
              <td> 
                <!-- value-of processing instruction 
                  process the value of the element matching the XPath expression 
                --> 
                <xsl:value-of select="productName"/> 
              </td> 
              <td><xsl:value-of select="manufacturer/@id"/></td> 
              <td><xsl:value-of select="description"/></td> 
              <td>
                    <xsl:for-each select="prices/price[1]"> 
                        <xsl:value-of select="text()"/>
                   </xsl:for-each> 
            </td>
			</tr> 
            </xsl:if>
          </xsl:for-each> 
        </table> 
        <h2>Table 2</h2>
        <table border="4"> 
          <tr bgcolor="lightgreen" color="black" font-weight="bold"> 
            <th>Product Name</th> 
            <th>Description</th> 
            <th>USD price</th> 
            <th>Euro  price</th> 
          </tr> 

          <!-- for-each processing instruction 
            Looks for each element matching the XPath expression 
          --> 
          <xsl:for-each select="products/product"> 
            <xsl:if test="manufacturer/@id='acme'">
            <tr> 
              <td> 
                <!-- value-of processing instruction 
                  process the value of the element matching the XPath expression 
                --> 
                <xsl:value-of select="productName"/> 
              </td> 
              <td><xsl:value-of select="description"/></td> 
              <td>
                    <xsl:for-each select="prices/price[2]"> 
                        <xsl:value-of select="text()"/>
                   </xsl:for-each>
              </td>
              <td>
                    <xsl:for-each select="prices/price[3]"> 
                        <xsl:value-of select="text()"/>
                   </xsl:for-each> 
             </td>
			</tr> 
            </xsl:if>
          </xsl:for-each> 
        </table> 
      </body> 
    </html> 
  </xsl:template>  
</xsl:stylesheet>