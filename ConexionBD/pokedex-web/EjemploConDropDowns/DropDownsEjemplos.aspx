<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="DropDownsEjemplos.aspx.cs" Inherits="pokedex_web.EjemploConDropDowns.DropDownsEjemplos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <hr />
    <div class="row">
        <div class="col">
            <h4>DropDownList Estatico</h4>
            <%--Si lo quiero tomar desde codebehind debo ponerle un ID--%>
            <asp:DropDownList CssClass="btn btn-outline-dark dropdown-toggle" runat="server">
                <asp:ListItem Text="Rojo" />
                <asp:ListItem Text="Amarillo" />
                <asp:ListItem Text="Azul" />
            </asp:DropDownList>
        </div>
        <div class="col">
            <h4>DropDownList desde DB</h4>
            <asp:DropDownList runat="server" ID="ddlPokemons" CssClass="btn btn-outline-dark dropdown-toggle" >

            </asp:DropDownList>
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
