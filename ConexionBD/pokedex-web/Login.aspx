<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="pokedex_web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%if (Session["usuario"] == null)
        {%>
    <div class="col-md-6">
        <div class="mb-3">
            <label class="form-label">User</label>
            <asp:TextBox runat="server" ID="txtUser" placeholder="user name" CssClass="form-control" />
        </div>
        <div class="mb-3">
            <label class="form-label">Password</label>
            <asp:TextBox runat="server" ID="txtPass" placeholder="*****" CssClass="form-control" TextMode="Password" />
        </div>
        <asp:Button Text="Ingresar" ID="btnIngresar" OnClick="btnIngresar_Click" CssClass="btn btn-primary" runat="server" />
    </div>
    <%}
        else
        {%>
    <asp:Button Text="Desloguearte" ID="btnDesloguear" OnClick="btnDesloguear_Click" CssClass="btn btn-primary" runat="server" />
    <%}%>
</asp:Content>
