<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="_5_Formulario_Completo_Varios_Controles.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--
                public DateTime Fecha { get; set; }
                public bool Usado { get; set; }
                public bool Importado { get; set; }--%>

    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id</label>
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtModelo" class="form-label">Modelo</label>
                <asp:TextBox runat="server" ID="txtModelo" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtDesripcion" class="form-label">Descripcion</label>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDesripcion" CssClass="form-control" />
                <%--textArea -> TextMode="MultiLine"--%>
            </div>
            <div class="mb-3">
                <label for="txtDesripcion" class="form-label">Color</label>
                <asp:DropDownList ID="ddlColores" runat="server" CssClass="form-select" aria-label="Default select example"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtFecha" class="form-label">Fecha</label>
                <asp:TextBox runat="server" TextMode="Date" ID="txtFecha" CssClass="form-control" />
                <%--FECHA -> TextMode="DATE"--%>
            </div>

            <div class="mb-3">
                <asp:CheckBox Text="" ID="chkUsado" runat="server" />
                <asp:Label runat="server" CssClass="form-check-label" Text="Usado"></asp:Label>
            </div>
            <div class="mb-3">
                <asp:RadioButton ID="rdbImportado" Text="Importado" runat="server" GroupName="Importado" />
                <asp:RadioButton ID="rdbNacional" Text="Nacional" runat="server" GroupName="Importado" Checked="true" />
                <%-- pongo los 2 radio buttons en un grupo llamado GroupName="Importado" y a 1 de esos lo dejo Checked="true" . de esa manera puedo solo seleccionar 1--%>
            </div>

            <div class="mb-3">
                <asp:Button Text="Aceptar" ID="btnAceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" />
                <a href="Default.aspx">Cancelar</a>
            </div>


            <%--OTRA MANERA DE VER LOS RADIO BUTTONS--%>
            <%--<div class="mb-3"> 
                <asp:RadioButton ID="RadioButton1" AutoPostBack="true" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Importado" runat="server" GroupName="Importado" />
                <asp:RadioButton ID="RadioButton2" AutoPostBack="true" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Nacional" runat="server" GroupName="Importado" Checked="true" />
            </div>--%>


        </div>
    </div>



</asp:Content>
