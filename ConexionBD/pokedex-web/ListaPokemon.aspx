<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="ListaPokemon.aspx.cs" Inherits="pokedex_web.ListaPokemon" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mi lista pokemon</h1>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <asp:Label Text="Filtrar" runat="server" />
                <asp:TextBox ID="txtFiltro" AutoPostBack="true" OnTextChanged="txtFiltro_TextChanged" CssClass="" runat="server" />
            </div>
        </div>
        <div class="col-6" style="display: flex; flex-direction: column; justify-content: flex-end">
            <div class="mb-3">
                <asp:CheckBox Text="Filtro Avanzado" CssClass="" ID="chkAvanzado" AutoPostBack="true" OnCheckedChanged="chkAvanzado_CheckedChanged" runat="server" />
            </div>
        </div>
    </div>

    <%if (FiltroAvanzado)
      {%>


    <div class="row">
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Campo" runat="server" />
                <asp:DropDownList CssClass="form-control" AutoPostBack="true" ID="ddlCampo" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged" runat="server">
                    <asp:ListItem Text="Nombre" />
                    <asp:ListItem Text="Tipo" />
                    <asp:ListItem Text="Número" />
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Criterio" runat="server" />
                <asp:DropDownList ID="ddlCriterio" CssClass="form-control" runat="server"></asp:DropDownList>
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Filtro" runat="server" />
                <asp:TextBox ID="txtFiltroAvanzado" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="col-3">
            <div class="mb-3">
                <asp:Label Text="Estado" runat="server" />
                <asp:DropDownList ID="ddlEstado" CssClass="form-control" runat="server">
                    <asp:ListItem Text="Todos" />
                    <asp:ListItem Text="Activo" />
                    <asp:ListItem Text="Inactivo" />
                </asp:DropDownList>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-3">
            <div class="mb-3">
                <asp:Button Text="Buscar" CssClass="btn btn-primary" ID="btnBuscar" OnClick="btnBuscar_Click" runat="server" />
            </div>
        </div>
    </div>
    <%} %>
    <div class="row">
        <div class="col">
            <asp:GridView ID="dgvPokemons" runat="server" DataKeyNames="ID"
                CssClass="table" HeaderStyle-CssClass="table-dark" AutoGenerateColumns="false"
                PagerStyle-CssClass="pagination-container"
                PagerSettings-Mode="Numeric"
                OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged"
                OnPageIndexChanging="dgvPokemons_PageIndexChanging"
                AllowPaging="true" PageSize="5">
                <Columns>
                    <asp:BoundField HeaderText="Numero" DataField="Numero" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
                    <asp:CheckBoxField HeaderText="Activo" DataField="Activo" />
                    <asp:CommandField ShowSelectButton="true" HeaderText="Accion" SelectText="🧐︎" />
                </Columns>
            </asp:GridView>
            <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>
        </div>
    </div>

</asp:Content>

