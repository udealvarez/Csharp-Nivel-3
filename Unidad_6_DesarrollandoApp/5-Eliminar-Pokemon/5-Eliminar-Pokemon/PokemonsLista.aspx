<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="PokemonsLista.aspx.cs" Inherits="_2_Listar_con_SP.PokemonLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Pokemons</h1>

    <asp:GridView ID="dgvPokemons" runat="server" DataKeyNames="Id" CssClass="table" AutoGenerateColumns="false" OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged"
        OnPageIndexChanging="dgvPokemons_PageIndexChanging" AllowPaging="true" PageIndex="3">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Numero" DataField="Numero" />
            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
            <%--Tipo es la propiedad de la clase Elemento y Elemento a su vez tiene una propiedad Descripcion es la sub propiedad en la clase pokemon--%>
            <asp:CheckBoxField HeaderText="Activo" DataField="Activo" />
            <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="✍" />
        </Columns>
    </asp:GridView>

    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>



</asp:Content>
