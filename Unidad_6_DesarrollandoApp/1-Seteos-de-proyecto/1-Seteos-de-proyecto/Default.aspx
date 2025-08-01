<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_2_Listar_con_SP.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola!</h1>
    <p>Llegaste al Pokedex Web, tu lugar Pokemon...</p>

    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%--  <%
            foreach (dominio.Pokemon poke in ListaPokemon)
            {
        %>

        <div class="col">
            <div class="card h-100">
                <img src="<%: poke.UrlImagen %>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"> <%: poke.Nombre %></h5> 
                    <p class="card-text"><%: poke.Descripcion %></p>
                    <a href="DetallePokemon.aspx?id<%: poke.Id%>">Ver Detalle</a>
                </div>
            </div>
        </div>   
           <% } %>--%>


        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <%--esto es una plantilla que se va a repetir varias veces segun este armado--%>
                <div class="col">
                    <div class="card h-100">
                        <img src="<%#Eval("UrlImagen")%>" class="card-img-top" alt="..."> <%--nombre de la prop en eval--%>
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <a href="DetallePokemon.aspx?id<%#Eval("Id")%>">Ver Detalle</a>
                            <%--llamo al evento de un boton con el repeater--%>
                            <asp:Button ID="btnEjemplo" runat="server" Text="Ejemplo" CssClass="btn btn-primary" CommandArgument='<%#Eval("Id")%>' CommandName="PokemonId" OnClick="btnEjemplo_Click" />
                            <%--de esta manera estoy configurando el boton para que cuando lance una accion se lleve un valor como argumento, para capturarlo voy con el evento onclick--%>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <%--el repeater tiene la ventaja de mandar un dato al code behind--%>
        </asp:Repeater>


    </div>
</asp:Content>
