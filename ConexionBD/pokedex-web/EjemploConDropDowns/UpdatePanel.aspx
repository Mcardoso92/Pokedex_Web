<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="UpdatePanel.aspx.cs" Inherits="pokedex_web.EjemploConDropDowns.UpdatePanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--Requerido para usar Update Panel--%>
    <%--<asp:ScriptManager ID="ScriptManeger1" runat="server" />--%>

    <hr />
    <h3>Update Panel</h3>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col">
                    <asp:Label Text="text" runat="server" ID="lblNombre" />
                </div>
                <div class="col">
                    <asp:TextBox AutoPostBack="true" runat="server" ID="txtNombre" OnTextChanged="txtNombre_TextChanged" CssClass="form-control" />
                </div>
                <div class="col">
                    <asp:Button Text="Aceptar" CssClass="form-control" ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <hr />
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
