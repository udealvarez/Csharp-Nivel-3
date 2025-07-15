<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EjemploConMaster.aspx.cs" Inherits="_1_Eventos_Postback_AutoPostback.EjemploConMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Ejemplo con MASTER</h1>

    <asp:TextBox ID="txtNombre" AutoPostBack="true" runat="server" OnTextChanged="txtNombre_TextChanged"></asp:TextBox> <%--AutoPostBack="true"--%>
    <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
    <asp:Label ID="lblSaludo" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblSecundario" runat="server" Text=""></asp:Label>
    <a href="About">DESCRIP</a>
</asp:Content>
