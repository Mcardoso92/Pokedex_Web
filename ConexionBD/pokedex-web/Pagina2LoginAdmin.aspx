<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="Pagina2LoginAdmin.aspx.cs" Inherits="pokedex_web.Pagina2LoginAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>ESA!</h1>
    <p>Tenes perfil admin, sino no podrias estar aca.</p>
        <div class="col-4">
            <asp:Button Text="Regresar" ID="btnRegresar" OnClick="btnRegresar_Click" CssClass="btn btn-primary" runat="server" />
        </div>
</asp:Content>
