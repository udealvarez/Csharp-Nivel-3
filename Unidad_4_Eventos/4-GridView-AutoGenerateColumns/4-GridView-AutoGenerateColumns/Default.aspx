<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_4_GridView_AutoGenerateColumns.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="dgvAutos" runat="server" CssClass="table table-dark table-bordered" AutoGenerateColumns="false">
        <%--si yo quiero que ciertas columnas de mi lista, no esten, las puedo borrar. para eso tengo que poner AutoGenerateColumns que por defecto viene en true,
            pero lo ponemos en false, con esto, la lista no se muestra en la pagina, queda desactivado.
        con la etiqueta COLUMNS decimos las columnas que queremos MOSTRAR en la pantalla
            BoundField -> campo enlazado. 
            HeaderText -> que quiero que muestre en la columna
            DataField -> tiene que ser el nombre de la PROPIEDAD DEL OBJETO DE LA LISTA que le estoy enlazando a estra grilla--%>

        <Columns>
            <asp:BoundField HeaderText="Modelo" DataField="Modelo" /> <%--DataField -> tiene que ser el nombre de la PROPIEDAD DEL OBJETO--%>
            <asp:BoundField HeaderText="Color" DataField="Color" />
            <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
            <asp:CheckBoxField HeaderText="Importado" DataField="Importado" /> <%--PROPIEDAD DE AUTO--%>
                    <%--CheckBoxField -> para que me aparezca el checkbox en la grilla--%>
        </Columns>
    </asp:GridView>

</asp:Content>
