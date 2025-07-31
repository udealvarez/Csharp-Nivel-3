<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DireccionForm.aspx.cs" Inherits="_7_Practica_ASP.DireccionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />

    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="mb-3">
                <label for="txtCalle" class="form-label">Calle</label>
                <asp:TextBox runat="server" ID="txtCalle" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtAltura" class="form-label">Altura</label>
                <asp:TextBox runat="server" ID="txtAltura" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtCiudad" class="form-label">Ciudad</label>
                <asp:DropDownList ID="ddlCiudad" runat="server" CssClass="form-select" aria-label="Default select example"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtProvincia" class="form-label">Provincia</label>
                <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="form-select" aria-label="Default select example"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtCodigoPostal" class="form-label">Codigo Postal</label>
                <asp:TextBox runat="server" ID="txtCodigoPostal" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtFechaRegistro" class="form-label">Fecha</label>
                <asp:TextBox runat="server" TextMode="Date" ID="txtFechaRegistro" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <asp:CheckBox Text="" ID="checkComercial" runat="server" />
                <asp:Label runat="server" CssClass="form-check-label" Text="Uso Comercial"></asp:Label>
            </div>

           

            <div class="mb-3">
                <asp:Button Text="Aceptar" ID="btnAceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" />
                <a href="Default.aspx">Cancelar</a>
            </div>
        </div>
    </div>
</asp:Content>
