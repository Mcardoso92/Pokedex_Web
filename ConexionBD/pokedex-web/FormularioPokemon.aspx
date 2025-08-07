<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="FormularioPokemon.aspx.cs" Inherits="pokedex_web.FormularioPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtID" class="form-label">ID</label>
                <asp:TextBox ID="txtID" CssClass="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtNumero" class="form-label">Numero</label>
                <asp:TextBox ID="txtNumero" CssClass="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <label for="ddlTipo" class="form-label">Tipo</label>
                <asp:DropDownList ID="ddlTipo" CssClass="form-select" runat="server" />
            </div>
            <div class="mb-3">
                <label for="ddlDebilidad" class="form-label">Debilidad</label>
                <asp:DropDownList ID="ddlDebilidad" CssClass="form-select" runat="server" />
            </div>

        </div>
        <div class="col-6">
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripcion</label>
                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" CssClass="form-control" runat="server" />
            </div>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="txtImagenUrl" class="form-label">Url Imagen</label>
                        <asp:TextBox runat="server" ID="txtImagenUrl" CssClass="form-control justify-content-center"
                            AutoPostBack="true" OnTextChanged="txtImagenUrl_TextChanged" />
                    </div>
                    <asp:Image ImageUrl="https://grupoact.com.ar/wp-content/uploads/2020/04/placeholder.png" runat="server" ID="imgPokemon" Width="55%" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <hr />
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="d-flex justify-content-center ">
                <div class="mb-3">
                    <asp:Button ID="btnAceptar" Text="Aceptar" CssClass="btn btn-primary" runat="server" OnClick="btnAceptar_Click" />
                    <asp:Button ID="btnModificar" Text="Modificar" CssClass="btn btn-primary" runat="server" OnClick="btnModificar_Click" />
                    <asp:Button ID="btnInhabilitar" Text="Inhabilitar" CssClass="btn btn-warning" runat="server" OnClick="btnInhabilitar_Click" />
                    <asp:Button ID="btnEliminar" Text="Eliminar" CssClass="btn btn-danger" runat="server" OnClick="btnEliminar_Click" />
                    <a href="ListaPokemon.aspx" class="btn btn-primary">Cancelar</a>
                </div>
            </div>
            <div class="d-flex justify-content-center ">
                <%if(confirmaEliminacion)
                  {%>
                <div class="mb-3">
                    <asp:CheckBox Text="Confirmar Eliminacion" ID="chkConfirmaEliminacion" runat="server" />
                    <asp:Button ID="btnConfirmaEliminar" Text="Eliminar" CssClass="btn btn-outline-danger" runat="server" OnClick="btnConfirmaEliminar_Click" />
                </div>
                <%} %>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
