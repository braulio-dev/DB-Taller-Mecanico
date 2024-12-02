﻿<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Automoviles.aspx.cs" Inherits="ProyectoBD.Automoviles" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
                <style>
            .menu-grid {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
                gap: 20px;
                margin-top: 20px;
            }

            .menu-box {
                border: 1px solid #ccc;
                padding: 15px;
                background-color: #f9f9f9;
                text-align: left;
                border-radius: 10px;
                box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s ease, background-color 0.3s ease;
                cursor: pointer;
            }

            .menu-box:hover {
                background-color: #eaeaea;
                transform: scale(1.05);
            }

            .menu-box a {
                text-decoration: none;
                color: #333;
                font-size: 16px;
                display: block;
            }

            .menu-box h2 {
                font-size: 20px;
                margin-bottom: 10px;
            }

            .menu-box p {
                font-size: 14px;
                color: #555;
            }
        </style>

        <div>
            <h1>Automóviles</h1>

            <div class="menu-grid">
                <div class="menu-box">
                    <a href="AddCar.aspx">
                        <h2>Nuevo Vehículo</h2>
                        <p>Agregar un nuevo vehículo al sistema.</p>
                    </a>
                </div>

                <div class="menu-box">
                    <a href="ViewCars.aspx">
                        <h2>Ver Vehículos</h2>
                        <p>Desplegar todos los vehículos en el sistema.</p>
                    </a>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
