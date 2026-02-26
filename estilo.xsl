<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/redes">
   <html lang="es">
<head>
    <meta charset="UTF-8"/>
    <title>Características de las Redes de Computadoras</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&amp;display=swap" rel="stylesheet"/>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Nunito', sans-serif;
            background-color: #f5f0ff;
            color: #2d2d2d;
        }
 
        .header {
            background: linear-gradient(135deg, #6a0dad, #9b59b6);
            color: white;
            padding: 40px 60px;
        }

        .header h1 {
            font-size: 2rem;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .header p {
            font-size: 1rem;
            opacity: 0.9;
            max-width: 900px;
            line-height: 1.6;
        }

        .main-layout {
            display: flex;
            max-width: 1300px;
            margin: 0 auto;
            padding: 30px 40px;
            gap: 30px;
        }

        .sidebar {
            width: 220px;
            flex-shrink: 0;
        }

        .sidebar-box {
            background: white;
            border-radius: 14px;
            padding: 20px;
            position: sticky;
            top: 20px;
            border: 1px solid #d8c8f0;
        }

        .sidebar-box h3 {
            font-size: 0.75rem;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 0.1em;
            color: #6a0dad;
            margin-bottom: 15px;
            border-bottom: 2px solid #e8d8f8;
            padding-bottom: 8px;
        }

        .sidebar-box a {
            display: block;
            color: #666;
            text-decoration: none;
            padding: 7px 0;
            font-size: 0.9rem;
            font-weight: 600;
            border-bottom: 1px solid #f0e8ff;
            transition: color 0.2s;
        }

        .sidebar-box a:hover {
            color: #6a0dad;
        }

        .sidebar-box a:last-child {
            border-bottom: none;
        }

        .content {
            flex: 1;
            display: flex;
            flex-direction: column;
            gap: 25px;
        }

        .seccion-card {
            background: white;
            border-radius: 16px;
            padding: 30px;
            border: 1px solid #d8c8f0;
            box-shadow: 0 2px 12px rgba(106,13,173,0.07);
        }

        .seccion-header {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 18px;
        }

        .badge {
            background-color: #f0e6ff;
            color: #6a0dad;
            border: 1px solid #c8a8e8;
            border-radius: 20px;
            padding: 3px 12px;
            font-size: 0.75rem;
            font-weight: 700;
            white-space: nowrap;
        }

        .seccion-header h2 {
            font-size: 1.5rem;
            font-weight: 800;
            color: #1a1a1a;
        }

        .seccion-subtitle {
            font-size: 1rem;
            font-weight: 700;
            color: #6a0dad;
            margin-bottom: 14px;
        }

        .definicion-block {
            border-left: 4px solid #9b59b6;
            padding: 14px 18px;
            background: #f8f0ff;
            border-radius: 0 10px 10px 0;
            margin-bottom: 20px;
            font-size: 0.95rem;
            line-height: 1.7;
        }

        .definicion-block strong {
            color: #6a0dad;
        }

        .seccion-desc {
            font-size: 0.95rem;
            line-height: 1.7;
            color: #444;
            margin-bottom: 20px;
        }

        .cards-grid {
            display: grid;
            gap: 16px;
        }

        .cards-grid-3 { grid-template-columns: repeat(3, 1fr); }
        .cards-grid-4 { grid-template-columns: repeat(4, 1fr); }
        .cards-grid-2 { grid-template-columns: repeat(2, 1fr); }

        .card {
            border: 1px solid #d8c8f0;
            border-radius: 12px;
            padding: 16px;
            background: #faf5ff;
        }

        .card h4 {
            font-size: 0.9rem;
            font-weight: 800;
            color: #6a0dad;
            margin-bottom: 8px;
        }

        .card p {
            font-size: 0.85rem;
            line-height: 1.6;
            color: #444;
        }

        .subseccion-titulo {
            font-size: 1rem;
            font-weight: 700;
            color: #6a0dad;
            margin-top: 24px;
            margin-bottom: 10px;
        }

        .tabla-titulo {
            font-size: 1rem;
            font-weight: 800;
            color: #1a1a1a;
            margin: 20px 0 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 0.875rem;
        }

        thead tr {
            background-color: #e8d5f5;
        }

        thead th {
            text-align: left;
            padding: 12px 14px;
            font-weight: 800;
            color: #6a0dad;
        }

        tbody tr {
            border-bottom: 1px solid #ede4f8;
        }

        tbody tr:last-child {
            border-bottom: none;
        }

        tbody td {
            padding: 11px 14px;
            color: #333;
            vertical-align: top;
            line-height: 1.5;
        }

        tbody tr:hover {
            background-color: #faf5ff;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1><xsl:value-of select="portada/titulo"/></h1>
        <p><xsl:value-of select="portada/subtitulo"/></p>
    </div>

    <div class="main-layout">

        
        <div class="sidebar">
            <div class="sidebar-box">
                <h3>Índice</h3>
                <a href="#seccion_fundamentos">Fundamentos</a>
                <a href="#seccion_clasificacion">Clasificación</a>
                <a href="#seccion_transmision">Medios de transmisión</a>
                <a href="#seccion_arquitectura">Modelo OSI</a>
                <a href="#seccion_tcpip">Modelo TCP/IP</a>
            </div>
        </div>

        <div class="content">

            <div class="seccion-card" id="seccion_fundamentos">
                <div class="seccion-header">
                    <span class="badge">fundamentos</span>
                    <h2>Fundamentos</h2>
                </div>
                <p class="seccion-subtitle">
                    <xsl:value-of select="seccion[@id='seccion_fundamentos']/titulo"/>
                </p>
                <div class="definicion-block">
                    <strong>Definición: </strong>
                    <xsl:value-of select="seccion[@id='seccion_fundamentos']/definicion"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seccion[@id='seccion_fundamentos']/descripcion"/>
                </div>
                <div class="cards-grid cards-grid-3">
                    <xsl:for-each select="seccion[@id='seccion_fundamentos']/propiedades_clave/propiedad_clave">
                        <div class="card">
                            <h4><xsl:value-of select="nombre"/></h4>
                            <p>
                                <xsl:value-of select="definicion"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="ejemplo"/>
                            </p>
                        </div>
                    </xsl:for-each>
                </div>
            </div>

            <div class="seccion-card" id="seccion_clasificacion">
                <div class="seccion-header">
                    <span class="badge">clasificacion</span>
                    <h2>Clasificación</h2>
                </div>
                <p class="seccion-subtitle">
                    <xsl:value-of select="seccion[@id='seccion_clasificacion']/titulo"/>
                </p>
                <p class="seccion-desc">
                    <xsl:value-of select="seccion[@id='seccion_clasificacion']/descripcion"/>
                </p>
                <div class="cards-grid cards-grid-4">
                    <xsl:for-each select="seccion[@id='seccion_clasificacion']/clasificacion_red/tipo_red">
                        <div class="card">
                            <h4><xsl:value-of select="nombre"/></h4>
                            <p>
                                Alcance de <xsl:value-of select="alcance"/>.
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="descripcion"/>
                                <xsl:text> Ejemplo típico: </xsl:text>
                                <xsl:value-of select="ejemplo"/>
                                <xsl:text> Tecnologías: </xsl:text>
                                <xsl:value-of select="tecnologias"/>.
                            </p>
                        </div>
                    </xsl:for-each>
                </div>
            </div>

            <div class="seccion-card" id="seccion_transmision">
                <div class="seccion-header">
                    <span class="badge">medios</span>
                    <h2>Medios de transmisión</h2>
                </div>

                <p class="subseccion-titulo">
                    <xsl:value-of select="seccion[@id='seccion_transmision']/conexiones_por_cable/titulo"/>
                </p>
                <p class="seccion-desc">
                    <xsl:value-of select="seccion[@id='seccion_transmision']/conexiones_por_cable/descripcion"/>
                </p>
                <div class="cards-grid cards-grid-2">
                    <xsl:for-each select="seccion[@id='seccion_transmision']/conexiones_por_cable/tipo_cable">
                        <div class="card">
                            <h4><xsl:value-of select="nombre"/></h4>
                            <p>
                                <xsl:value-of select="descripcion"/>
                                <xsl:text> </xsl:text>
                                <xsl:for-each select="categorias/categoria">
                                    <xsl:value-of select="nombre"/>: <xsl:value-of select="velocidad"/>, <xsl:value-of select="distancia_maxima"/>.<xsl:text> </xsl:text>
                                </xsl:for-each>
                                <xsl:for-each select="tipos_fibra/fibra">
                                    <xsl:value-of select="nombre"/>: <xsl:value-of select="caracteristica"/>, <xsl:value-of select="distancia"/>, <xsl:value-of select="coste"/>.<xsl:text> </xsl:text>
                                </xsl:for-each>
                                Ventajas: <xsl:value-of select="ventajas"/>.
                                Uso: <xsl:value-of select="uso"/>.
                            </p>
                        </div>
                    </xsl:for-each>
                </div>

                <p class="subseccion-titulo">
                    <xsl:value-of select="seccion[@id='seccion_transmision']/conexiones_inalambricas/titulo"/>
                </p>
                <p class="seccion-desc">
                    <xsl:value-of select="seccion[@id='seccion_transmision']/conexiones_inalambricas/descripcion"/>
                </p>
                <div class="cards-grid cards-grid-2">
                    <xsl:for-each select="seccion[@id='seccion_transmision']/conexiones_inalambricas/tipo_inalambrico">
                        <div class="card">
                            <h4><xsl:value-of select="nombre"/></h4>
                            <p>
                                <xsl:value-of select="descripcion"/>
                                <xsl:if test="alcance"><xsl:text> Alcance: </xsl:text><xsl:value-of select="alcance"/>.</xsl:if>
                                <xsl:if test="velocidad"><xsl:text> Velocidad: </xsl:text><xsl:value-of select="velocidad"/>.</xsl:if>
                                <xsl:if test="ventaja"><xsl:text> </xsl:text><xsl:value-of select="ventaja"/>.</xsl:if>
                                <xsl:if test="desventajas"><xsl:text> Desventajas: </xsl:text><xsl:value-of select="desventajas"/>.</xsl:if>
                                <xsl:if test="ejemplo"><xsl:text> Ejemplo típico: </xsl:text><xsl:value-of select="ejemplo"/>.</xsl:if>
                                <xsl:if test="nota"><xsl:text> </xsl:text><xsl:value-of select="nota"/></xsl:if>
                            </p>
                        </div>
                    </xsl:for-each>
                </div>
            </div>

            <div class="seccion-card" id="seccion_arquitectura">
                <div class="seccion-header">
                    <span class="badge">osi</span>
                    <h2>Modelo OSI</h2>
                </div>
                <p class="seccion-subtitle">
                    <xsl:value-of select="seccion[@id='seccion_arquitectura']/titulo"/>
                </p>
                <p class="seccion-desc">
                    <xsl:value-of select="seccion[@id='seccion_arquitectura']/descripcion"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seccion[@id='seccion_arquitectura']/nota_iso"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="seccion[@id='seccion_arquitectura']/ventaja_modular"/>
                </p>
                <p class="tabla-titulo">Las 7 capas OSI</p>
                <table>
                    <thead>
                        <tr>
                            <th>Capa</th>
                            <th>Función</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="seccion[@id='seccion_arquitectura']/capas_osi/capa">
                            <tr>
                                <td><xsl:value-of select="@numero"/></td>
                                <td>
                                    <xsl:value-of select="descripcion"/>
                                    <xsl:if test="protocolos"> Protocolos: <xsl:value-of select="protocolos"/>.</xsl:if>
                                    <xsl:if test="especificaciones"> Ejemplos: <xsl:value-of select="especificaciones"/>.</xsl:if>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </div>

            <div class="seccion-card" id="seccion_tcpip">
                <div class="seccion-header">
                    <span class="badge">tcpip</span>
                    <h2>Modelo TCP/IP</h2>
                </div>
                <p class="seccion-subtitle">
                    <xsl:value-of select="seccion[@id='seccion_tcpip']/titulo"/>
                </p>
                <p class="seccion-desc">
                    <xsl:value-of select="seccion[@id='seccion_tcpip']/descripcion"/>
                </p>
                <p class="tabla-titulo">Correspondencia OSI — TCP/IP</p>
                <table>
                    <thead>
                        <tr>
                            <th>OSI</th>
                            <th>Función</th>
                            <th>TCP/IP</th>
                            <th>Protocolos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="seccion[@id='seccion_tcpip']/tabla_comparativa/fila">
                            <tr>
                                <td><xsl:value-of select="capa_osi"/></td>
                                <td><xsl:value-of select="funcion_principal"/></td>
                                <td><xsl:value-of select="capa_tcpip"/></td>
                                <td><xsl:value-of select="protocolos_comunes"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </div>

        </div>
    </div>

</body>
</html>
  </xsl:template>

</xsl:stylesheet>