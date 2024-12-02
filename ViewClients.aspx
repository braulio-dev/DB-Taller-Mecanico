<%@ Page Title="Results" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewClients.aspx.cs" Inherits="ProyectoBD.ViewClients" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:GridView ID="GridViewQuery" runat="server" AutoGenerateColumns="true"></asp:GridView>
    </main>

</asp:Content>
