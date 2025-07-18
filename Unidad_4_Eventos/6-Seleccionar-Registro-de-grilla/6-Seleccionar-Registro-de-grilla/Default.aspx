<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_6_Seleccionar_Registro_de_grilla.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<style>
        .oculto {
            display: none;
        }
    </style>--%>
    <hr />
    <div class="row">
        <div class="col">
            <asp:GridView ID="dgvAutos" OnSelectedIndexChanged="dgvAutos_SelectedIndexChanged" runat="server" CssClass="table table-dark table-bordered" AutoGenerateColumns="false">

                <Columns>
                    <%--<asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto" />--%>
                    <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
                    <asp:BoundField HeaderText="Color" DataField="Color" />
                    <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
                    <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
                    <%--     <asp:BoundField />
                    <asp:CheckBoxField />--%>
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />
                    <%--INVESTIGAR | va con OnSelectedIndexChanged="dgvAutos_SelectedIndexChanged"--%>
                </Columns>

            </asp:GridView>

            <a href="AutoForm.aspx">Agregar</a>
        </div>
    </div>
</asp:Content>
