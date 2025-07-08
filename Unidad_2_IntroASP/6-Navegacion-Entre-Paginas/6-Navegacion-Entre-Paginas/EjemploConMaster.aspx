<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EjemploConMaster.aspx.cs" Inherits="_6_Navegacion_Entre_Paginas.EjemploConMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Ejemplo con MASTER</h1>

    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
    <asp:Label ID="lblSaludo" runat="server" Text=""></asp:Label>

    <a href="About">DESCRIP</a>

</asp:Content>
