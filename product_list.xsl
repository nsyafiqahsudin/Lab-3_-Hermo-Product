<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="/">
   <html>
   <body>
   <center><h2><strong>HERMO COSMETIC BIG SALE</strong></h2></center>

   <center><table border="1">
     <tr bgcolor="#01A394">
       <th>Name</th>
       <th>Price</th>
       <th>Description</th>
       <th>Image</th> 
     </tr>
     
     <xsl:for-each select="product_list/product">
     <tr>
       <td><xsl:value-of select="name"/></td>
       <td><xsl:value-of select="price"/></td>
       <td><xsl:value-of select="description"/></td>
       <td><img><xsl:attribute name="src"><xsl:value-of select="image"/></xsl:attribute></img></td>
          


     </tr>
     </xsl:for-each>

   </table></center>
   </body>
   </html>
 </xsl:template>
 </xsl:stylesheet>
