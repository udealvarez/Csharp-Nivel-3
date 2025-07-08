<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ejemploConMaster.aspx.cs" Inherits="_5_Controles_ASP_vs_HTML.ejemploConMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Ejemplo con MASTER</h1>

    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
    <asp:Label ID="lblSaludo" runat="server" Text=""></asp:Label>

</asp:Content>
