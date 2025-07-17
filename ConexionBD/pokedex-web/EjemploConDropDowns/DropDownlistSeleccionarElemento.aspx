<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="DropDownlistSeleccionarElemento.aspx.cs" Inherits="pokedex_web.EjemploConDropDowns.DropDownlistSeleccionarElemento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <h3>Deplegable Pre Seleccionado</h3>
    <div class="mb-3 row">
        <asp:Label Text="ID" runat="server" class="col-sm-1 col-form-label" />
        <div class="col-sm-5">
            <asp:TextBox runat="server" ID="txtIdTipo" CssClass="form-control" />
        </div>
        <div class="col">
            <asp:Label Text="ID" runat="server" class="col-sm-1 col-form-label" />
            <asp:DropDownList runat="server" ID="ddlTipoPreseleccionado" CssClass="btn btn-outline-dark dropdown-toggle"> </asp:DropDownList>
        </div>
    </div>
    <div class="mb-3 row">
        <div class="col">
            <asp:Button Text="Aceptar" runat="server" CssClass="btn btn-primary" ID="btnSeleccionar" OnClick="btnSeleccionar_Click" />
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
