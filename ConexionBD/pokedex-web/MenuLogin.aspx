<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="MenuLogin.aspx.cs" Inherits="pokedex_web.MenuLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-12">
            <h3>Te logueaste correctamente</h3>
            <hr />
        </div>
        <div class="col-4">
            <asp:Button Text="Pagina 1" ID="btnPagina1" OnClick="btnPagina1_Click" CssClass="btn btn-primary" runat="server" />
        </div>
        <div class="col-4">
            <%if (Session["usuario"] != null && ((dominio.Usuario)Session["usuario"]).TipoUsuario == dominio.TipoUsuario.ADMIN) {%> 
            <asp:Button Text="Pagina 2" ID="btnPagina2" OnClick="btnPagina2_Click" CssClass="btn btn-primary" runat="server" />
            <p>Tenes que ser admin.</p>
            <%} %>
        </div>
    </div>


</asp:Content>
