<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_7_Practica_ASP.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="alert alert-success">¡Bootstrap está funcionando!</div>
    <hr />
    <div class="container mt-4">
        <div class="row justify-content-center">

            <asp:GridView ID="dgvDireccion" OnSelectedIndexChanged="dgvDireccion_SelectedIndexChanged" DataKeyNames="Id" runat="server" CssClass="table table-dark table-striped table-hover" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="Calle" DataField="Calle" />
                    <asp:BoundField HeaderText="Altura" DataField="Altura" />
                    <asp:BoundField HeaderText="Ciudad" DataField="Ciudad" />
                    <asp:BoundField HeaderText="Provincia" DataField="Provincia" />
                    <asp:BoundField HeaderText="Codigo Postal" DataField="CodigoPostal" />
                    <asp:CheckBoxField HeaderText="Es Comercial" DataField="EsComercial" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />
                    <asp:TemplateField HeaderText="Eliminar">
                        <ItemTemplate>
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CommandName="Eliminar" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-danger btn-sm" OnClick="btnEliminar_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <a href="DireccionForm.aspx">Agregar</a>
        </div>
    </div>
</asp:Content>
