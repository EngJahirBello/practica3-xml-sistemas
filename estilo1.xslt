<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <title>Materias de Ingeniería en Sistemas Computacionales</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        padding: 20px;
                        background-color: #f4f4f9;
                        text-align: center; 
                    }
                    h1 {
                        color: #003366;
                        margin-bottom: 20px;
                    }
                    table {
                        border-collapse: collapse; 
                        width: 100%;
                        max-width: 900px;
                        margin: 0 auto; /* Centrar la tabla en la página */
                        background-color: white;
                        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                        border-radius: 8px;
                        overflow: hidden; 
                        border: 1px solid #ddd;
                    }
                    th {
                        background-color: #000; 
                        color: white;
                        padding: 12px 8px;
                        font-weight: bold;
                        text-transform: uppercase;
                        border: 1px solid #ddd;
                        text-align: center;
                    }
                    td {
                        padding: 10px 8px;
                        text-align: center;
                        border: 1px solid #ddd;
                        color: #333;
                    }
                    /* Efecto de rayas para filas impares para mejor legibilidad */
                    tbody tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                    /* Resaltado de fila al pasar el ratón */
                    tbody tr:hover {
                        background-color: #f1f1f1;
                    }
                </style>
            </head>
            <body>
                <h1>Materias de <xsl:value-of select="carrera/@nombre"/></h1>
                
                <table>
                    <thead>
                        <tr>
                            <th>Clave</th>
                            <th>Nombre</th>
                            <th>Semestre</th>
                            <th>Créditos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="carrera/curso">
                            <tr>
                                <td><xsl:value-of select="clave"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="semestre"/></td>
                                <td><xsl:value-of select="creditos"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
