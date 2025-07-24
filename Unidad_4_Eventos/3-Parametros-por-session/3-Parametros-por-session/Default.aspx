<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_3_Parametros_por_session._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <% if (user != "")
        {  %>
    <h2>Ingresaste !</h2>
    <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>

    <% }
        else
        { %>

    <h2>Debes loguearte</h2>
    <a href="EjemploConMaster">Login</a>

    <% } %>

   
</asp:Content>
