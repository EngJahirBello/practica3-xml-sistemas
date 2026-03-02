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
                    }
                    h1 { 
                        color: #003366; 
                        text-align: center;
                        margin-bottom: 30px;
                    }
                    /* Estilos para la caja blanca que contiene la lista */
                    .contenedor-lista {
                        background: white; 
                        padding: 30px 50px; 
                        border-radius: 8px; 
                        box-shadow: 0 4px 8px rgba(0,0,0,0.1); 
                        max-width: 800px;
                        margin: 0 auto;
                    }
                    ol { 
                        margin: 0;
                        padding-left: 20px;
                    }
                    li { 
                        margin-bottom: 20px; 
                        font-size: 18px; 
                        color: #333; 
                    }
                    .detalles { 
                        color: #666; 
                        font-size: 14px; 
                        margin-top: 5px; 
                        background-color: #f9f9f9;
                        padding: 10px;
                        border-radius: 5px;
                        border-left: 3px solid #003366;
                    }
                </style>
            </head>
            <body>
                <h1>Materias de <xsl:value-of select="carrera/@nombre"/></h1>
                
                <div class="contenedor-lista">
                    <ol>
                        <xsl:for-each select="carrera/curso">
                            <li>
                                <strong><xsl:value-of select="nombre"/></strong>
                                <div class="detalles">
                                    Clave: <xsl:value-of select="clave"/> | 
                                    Semestre: <xsl:value-of select="semestre"/> | 
                                    Créditos: <xsl:value-of select="creditos"/>
                                </div>
                            </li>
                        </xsl:for-each>
                    </ol>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

