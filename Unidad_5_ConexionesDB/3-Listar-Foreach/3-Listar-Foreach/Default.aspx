<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_2_Listar_con_SP.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola!</h1>
    <p>Llegaste al Pokedex Web, tu lugar Pokemon...</p>

    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%
            foreach (dominio.Pokemon poke in ListaPokemon)
            {
        %>

        <div class="col">
            <div class="card h-100">
                <img src="<%: poke.UrlImagen %>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"> <%: poke.Nombre %></h5> <%--NO OLVIDAR: hay : cuando abre < --%> <%--esto aca es para que aparezca el nombre de cada pokemon--%>
                    <p class="card-text"><%: poke.Descripcion %></p>
                    <a href="DetallePokemon.aspx?id<%: poke.Id%>">Ver Detalle</a>
                </div>
            </div>
        </div>   
           <% } %>

        <%--esto se hace para que haya la cantidad de pokemones que hay en la base de datos, por eso hacemos este foreach de esta manera--%>
        

    </div>
</asp:Content>
