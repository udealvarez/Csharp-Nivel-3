<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_3_Bootstrap_controles.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--este CONTENT es por si yo quiero inyectar algun CSS, JS, mas que nada CSS. Esto lo va a inyectar en el asp:ContentPlaceHolder ID="head"
    sumado a lo que esta de CSS y JS--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--CONTENIDO DE LA PAGINA -> LOGIN--%>

    <div class="row">
        <div class="col-2">
        </div>

        <div class="col">
            <div class="mb-3">
                <label for="txtMail" class="form-label">Email address</label>
                <asp:TextBox runat="server" ID="txtMail" CssClass="form-control"/>
            </div>
            <div class="mb-3">
                <label for="txtPassword" class="form-label">Password</label>
                <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" type="password" />
            </div>
            
            <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
            <asp:Button Text="Ingresar" CssClass="btn btn-primary" ID="btnAceptar" OnClick="btnAceptar_Click" runat="server" />

            <%--para poner a un control de ASP clases de CSS, tengo que poner "CssClass"--%>
        </div>

        <div class="col-2">
        </div>

    </div>


</asp:Content>



