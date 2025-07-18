<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="ResolverURLImagenSinRecargar.aspx.cs" Inherits="pokedex_web.EjemploConDropDowns.ResolverURLImagenSinRecargar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <h3>Imagen Rapido</h3>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="mb-3 row">
                <div class="col">
                    <asp:TextBox runat="server" ID="txtUrlImagen" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtUrlImagen_TextChanged"/>
                </div>
                <div class="col">
                    <asp:Button Text="Cargar" runat="server" ID="btnCargar" CssClass="btn btn-primary" OnClick="btnCargar_Click" />
                </div>
            </div>
            <div class="mb-3 row">
                <div class="col">
                    <img src="<% = urlImagen %>" alt="Alternate Text" width="50%" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
