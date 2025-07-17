<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="DropDownlistEnlazados.aspx.cs" Inherits="pokedex_web.EjemploConDropDowns.DropDownlistEnlazados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <hr />
    <div class="row">
        <div class="col">
            <h4>DropDownList Enlazados</h4>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <asp:Label Text="Tipos" runat="server" />
            <asp:DropDownList runat="server" ID="ddlTipos" CssClass="btn btn-outline-dark dropdown-toggle"
                AutoPostBack="true" OnSelectedIndexChanged="ddlTipos_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <div class =" col">
            <asp:Label Text="Pokemons" runat="server" />
            <asp:DropDownList runat="server" ID="ddlPokemonsFiltrados" CssClass="btn btn-outline-dark dropdown-toggle"></asp:DropDownList>
        </div>
    </div>
        <hr />
    <div class="row">
        <div class="col">
            <h4>Mas Ejemplos</h4>
            <p>
                <a href="DropDownListEnlazados.aspx">DropDownList Enlazados</a>
            </p>
            <p>
                <a href="UpdatePanel.aspx">Update Panel</a>
            </p>
            <p>
                <a href="DropDownlistEnlazadosUpdatePanel.aspx">DropDownList Enlazados con Update Panel</a>
            </p>
            <p>
                <a href="DropDownlistSeleccionarElemento.aspx">DropDownList con Elemento Preseleccionado</a>
            </p>
        </div>
    </div>
</asp:Content>
