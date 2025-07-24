<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EjemploConMaster.aspx.cs" Inherits="_3_Parametros_por_session.EjemploConMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Ejemplo con MASTER</h1>

    <asp:TextBox ID="txtNombre" runat="server" OnTextChanged="txtNombre_TextChanged"></asp:TextBox> <br /> <%--AutoPostBack="true"--%>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox> <br />
    <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Aceptar" />
    <asp:Label ID="lblSaludo" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblSecundario" runat="server" Text=""></asp:Label>

    <%--<a href="Default?id=3">DESCRIP</a>--%>

</asp:Content>
