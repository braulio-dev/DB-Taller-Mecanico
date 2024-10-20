<%@ Page Title="Query Menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoBD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <style>
            .query-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
                gap: 10px;
            }

            .query-box {
                border: 1px solid #ccc;
                padding: 8px;
                margin: 10px;
                text-align: left;
                background-color: #f5f5f5;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .query-box:hover {
                background-color: #e1e1e1;
            }

            .query-box a{
                text-decoration: none;
                color: #333;
                font-size: 14px;
            }
        </style>

        <div>
            <h1>Query Menu</h1>

            <div class="query-grid">
                <!-- Consulta 1 -->
                <div class ="query-box">
                    <a href="QueryWithDate.aspx?consultaId=1">
                        <h2>Query 1</h2>
                        <p>Mostrar la información del cliente con mayor frecuencia 
                            en reparaciones que se le hayan atendido en un periodo de 
                            tiempo.</p>
                    </a>
                </div>

                <!-- Consulta 2 -->
                <div class ="query-box">
                    <a href="Query.aspx?consultaId=2">
                        <h2>Query 2</h2>
                        <p>Mostrar la información de las promociones aplicadas en el 
                            departamento mecánico.</p>
                    </a>
                </div>

                <!-- Consulta 3 -->
                <div class ="query-box">
                    <a href="Query.aspx?consultaId=3">
                        <h2>Query 3</h2>
                        <p>Mostrar la información del inventario de refacciones que 
                            tiene cada producto registrado.</p>
                    </a>
                </div>

                <!-- Consulta 4 -->
                <div class ="query-box">
                    <a href="Query.aspx?consultaId=4">
                        <h2>Query 4</h2>
                        <p>Mostrar las ventas obtenidas con respecto al servicio 
                            de sólo diagnósticos.</p>
                    </a>
                </div>

                <!-- Consulta 5 -->
                <div class ="query-box">
                    <a href="QueryWithDate.aspx?consultaId=5">
                        <h2>Query 5</h2>
                        <p>Mostrar entre el periodo de rango de fechas el número de 
                            atenciones para cada departamento del taller.</p>
                    </a>
                </div>

                <!-- Consulta 6 -->
                <div class ="query-box">
                    <a href="QueryWithDate.aspx?consultaId=6">
                        <h2>Query 6</h2>
                        <p>Mostrar las ganancias obtenidas en un rango de fechas 
                            específico en base al departamento carroceria y pintura..</p>
                    </a>
                </div>

                <!-- Consulta 7 -->
                <div class ="query-box">
                    <a href="QueryWithDate.aspx?consultaId=7">
                        <h2>Query 7</h2>
                        <p>Mostrar el empleado que mayor ganancia obtuvo en un 
                            rango de fechas específico.</p>
                    </a>
                </div>

                <!-- Consulta 8 -->
                <div class ="query-box">
                    <a href="Query.aspx?consultaId=8">
                        <h2>Query 8</h2>
                        <p>Mostrar el listado de supervisores y sus supervisados en
                            base al departamento suspensión.</p>
                    </a>
                </div>

                <!-- Consulta 9 -->
                <div class ="query-box">
                    <a href="Query.aspx?consultaId=9">
                        <h2>Query 9</h2>
                        <p>Mostrar el listado de clientes registrados junto con los 
                            automóviles que tiene registrados en sistema.</p>
                    </a>
                </div>

                <!-- Consulta 10 -->
                <div class ="query-box">
                    <a href="Query.aspx?consultaId=10">
                        <h2>Query 10</h2>
                        <p>Mostrar las reparaciones más concurrentes en base a un
                            departamento específico.</p>
                    </a>
                </div>

                <!-- Consulta 11 -->
                <div class ="query-box">
                    <a href="QueryWithDate.aspx?consultaId=11">
                        <h2>Query 11</h2>
                        <p>Mostrar el departamento que presenta el mayor consumo
                            de refacciones en un periodo de fecha determinado y
                            muestre el número de refacciones utilizadas.</p>
                    </a>
                </div>

                <!-- Consulta 12 -->
                <div class ="query-box">
                    <a href="QueryWithDate.aspx?consultaId=12">
                        <h2>Query 12</h2>
                        <p>Mostrar las promociones vigentes por un rango de fechas
                            determinado.</p>
                    </a>
                </div>

                <!-- Consulta 13 -->
                <div class ="query-box">
                    <a href="QueryWithDate.aspx?consultaId=13">
                        <h2>Query 13</h2>
                        <p>Mostrar las garantías que se han presentado en los
                            servicios y que costo ha generado por un rango de fechas
                            específico.</p>
                    </a>
                </div>

                <!-- Consulta 14 -->
                <div class ="query-box">
                    <a href="QueryWithDate.aspx?consultaId=14">
                        <h2>Query 14</h2>
                        <p>Mostrar el departamento con mayor afluencia de
                            reparaciones en un rango de fechas determinado.</p>
                    </a>
                </div>

                <!-- Consulta 15 -->
                <div class ="query-box">
                    <a href="Query.aspx?consultaId=15">
                        <h2>Query 15</h2>
                        <p>Mostrar el departamento con su total de 
                            reparaciones.</p>
                    </a>
                </div>

             
            </div>
        </div>
    </main>

</asp:Content>
