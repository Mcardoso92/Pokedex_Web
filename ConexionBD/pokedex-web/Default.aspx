<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pokedex_web.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mi app Pokedex Web</h1>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%--        <%
            foreach (dominio.Pokemon poke in ListaPokemon)
            {
        %>
            <div class="col">
                <div class="card">
                    <img src="<%: poke.UrlImagen %>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%:poke.Nombre %></h5>
                        <p class="card-text"><%:poke.Descripcion %></p>
                        <a href="DetallePokemon.aspx?id=<%: poke.ID %>">Ver Detalle</a>
                    </div>
                </div>
            </div>

        <%}%>--%>

        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <a href="DetallePokemon.aspx?id=<%#Eval("ID")%>">Ver Detalle</a>
                            <asp:Button Text="Ejemplo" CssClass="btn btn-primary" runat="server" id="btnEjemplo" CommandArgument='<%#Eval("ID") %>' CommandName="PokemonId" OnClick="btnEjemplo_Click" />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>


    </div>
</asp:Content>
