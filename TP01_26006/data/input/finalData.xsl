<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html lang="pt-PT">
            <head>
                <meta charset="utf-8"/>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 0;
                        padding: 0;
                        background-color: #f4f4f9;
                        color: #333;
                    }
                    h2 {
                        text-align: center;
                        color: #444;
                        margin-top: 20px;
                    }
                    table {
                        width: 90%;
                        margin: 20px auto;
                        border-collapse: collapse;
                        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
                    }
                    th, td {
                        padding: 12px;
                        text-align: center;
                        border: 1px solid #e0e0e0;
                    }
                    th {
                        background-color: #0077b6;
                        color: white;
                    }
                    tr:nth-child(even) {
                        background-color: #f0f8ff;
                    }
                    tr:hover {
                        background-color: #d7ecff;
                    }
                    img {
                        width: 80px;
                        height: 150px;
                        border-radius: 5px;
                    }
                </style>
            </head>
            <body>
                <h2>Fragrâncias com valores inferiores a 80€, em desconto</h2>
                <table>
                    <tr>
                        <th>Imagem</th>
                        <th>Id</th>
                        <th>Título</th>
                        <th>Descrição</th>
                        <th>Categoria</th>
                        <th>Preço (€)</th>
                        <th>Desconto (%)</th>
                        <th>Stock</th>
                    </tr>
                    <xsl:for-each select="Produtos/Produto">
                        <tr>
                            <td>
                                <img>
                                <xsl:attribute name="src"><xsl:value-of select="image"/></xsl:attribute>
                                <xsl:attribute name="alt">Imagem do Produto</xsl:attribute>
                                </img>
                            </td>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="descricao"/></td>
                            <td><xsl:value-of select="categoria"/></td>
                            <td><xsl:value-of select="preco"/></td>
                            <td><xsl:value-of select="desconto"/></td>
                            <td><xsl:value-of select="stock"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
