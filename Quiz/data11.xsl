
<?xml version="1.0" encoding= "ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/bookstore">
 <html>
   <head>
     <title>Hw 9</title>
   </head>
   <body>
     <h1 align="center">Book Store</h1>
     
     <table>
     
     <xsl:variable name="childBooks" select="count(/bookstore/book[@category='children'])"/>
    <xsl:variable name="wBooks" select="count(/bookstore/book[@category='web'])"/>
    <xsl:variable name="cookingBooks" select="count(/bookstore/book[@category='cooking'])"/>
    
      
       <tr><td><xsl:value-of select="$wBooks"/></td><td>Web</td><td>book(s)</td></tr>
       <tr><td><xsl:value-of select="$cookingBooks"/></td><td>Cooking</td><td>book(s)</td></tr>
         <tr><td><xsl:value-of select="$childBooks"/></td><td>Children</td><td>book(s)</td></tr>
     </table>
    
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>