<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoBD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Button ID="btnBusca" runat="server" Text="Buscar" OnClick="btnBusca_Click" />
        <asp:GridView ID="GridViewClientes" runat="server" AutoGenerateColumns="true"></asp:GridView>
    </main>

</asp:Content>
