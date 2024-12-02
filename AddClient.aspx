﻿<%@ Page Title="Query with Date" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddClient.aspx.cs" Inherits="ProyectoBD.AddClient" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <main>
        <div>
            <label for="nombre">Nombre:</label>
            <asp:TextBox ID="nombre" runat="server" CssClass="form-control" Placeholder="Juan Pérez"></asp:TextBox>
        </div>

        <div>
            <label for="telefono">Teléfono:</label>
            <asp:TextBox ID="telefono" runat="server" CssClass="form-control" Placeholder="123-456-7890"></asp:TextBox>
        </div>

        <div>
            <label for="Correo">Correo:</label>
            <asp:TextBox ID="correo" runat="server" CssClass="form-control" Placeholder="juan.perez@mail.com"></asp:TextBox>
        </div>

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="submit-button" />

        <asp:GridView ID="GridViewResults" runat="server" AutoGenerateColumns="true"></asp:GridView>

        <style>
            .form-control {
                margin: 5px 0;
                padding: 8px;
                width: 250px;
                display: block;
            }

            .submit-button {
                padding: 10px;
                background-color: #2ecc71;
                color: white;
                border: none;
                cursor: pointer;
            }

            .submit-button:hover {
                background-color: #27ae60;
            }
        </style>
    </main>

</asp:Content>

