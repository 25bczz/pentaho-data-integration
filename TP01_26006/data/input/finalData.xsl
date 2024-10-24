<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html lang="pt-PT">
<meta charset="utf-8"/> 
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd
    text-align: left
    padding: 8px
}

tr:nth-child(even) {
    background-color: #dddddd
}
</style>
</head>
<body>
  <h2>Fragnancias, com valores inferiores a 80€, em desconto</h2>
  <table>
    <tr>
      <th style="text-align:center" >Id</th>
      <th style="text-align:center" >Titulo</th>
      <th style="text-align:center" >Descricao</th>
      <th style="text-align:center" >Categoria</th>
      <th style="text-align:center" >Preco</th>
      <th style="text-align:center" >Desconto</th>
      <th style="text-align:center" >Stock</th>
      <th style="text-align:center" >Image</th>
    </tr>
    <xsl:for-each select="Produtos/Produto">
    <tr>
      <td style="text-align:center" ><xsl:value-of select="id"/></td>
      <td style="text-align:center" ><xsl:value-of select="titulo"/></td>
      <td style="text-align:center" ><xsl:value-of select="descricao"/></td>
      <td style="text-align:center" ><xsl:value-of select="categoria"/></td>
      <td style="text-align:center" ><xsl:value-of select="preco"/></td>
      <td style="text-align:center" ><xsl:value-of select="desconto"/></td>
      <td style="text-align:center" ><xsl:value-of select="stock"/></td>
      <td style="text-align:center" ><xsl:value-of select="image"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
