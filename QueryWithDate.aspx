<%@ Page Title="Query with Date" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="QueryWithDate.aspx.cs" Inherits="ProyectoBD.QueryWithDate" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <main>
        <div>
            <label for="txtStartDate">Start Date:</label>
            <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" Placeholder="YYYY-MM-DD"></asp:TextBox>
        </div>

        <div>
            <label for="txtEndDate">End Date:</label>
            <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control" Placeholder="YYYY-MM-DD"></asp:TextBox>
        </div>

        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" CssClass="query-button" />

        <asp:GridView ID="GridViewResults" runat="server" AutoGenerateColumns="true"></asp:GridView>

        <style>
            .form-control {
                margin: 5px 0;
                padding: 8px;
                width: 250px;
                display: block;
            }

            .query-button {
                padding: 10px;
                background-color: #007bff;
                color: white;
                border: none;
                cursor: pointer;
            }

            .query-button:hover {
                background-color: #0056b3;
            }
        </style>
    </main>

</asp:Content>

