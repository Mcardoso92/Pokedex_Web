<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="ListaPokemon.aspx.cs" Inherits="pokedex_web.ListaPokemon" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mi lista pokemon</h1>
    <div class="row">
        <div class="col">
            <asp:GridView ID="dgvPokemons" runat="server" DataKeyNames="ID"
                CssClass="table" HeaderStyle-CssClass="table-dark" AutoGenerateColumns="false"
                OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged"
                OnPageIndexChanging="dgvPokemons_PageIndexChanging"
                AllowPaging="true" PageSize="5">
                <Columns>
                    <asp:BoundField HeaderText="Numero" DataField="Numero" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
                    <asp:CommandField ShowSelectButton="true"  HeaderText="Accion" SelectText="🧐︎" />
                </Columns>
            </asp:GridView>
            <a href="FormularioPokemon.aspx" class="btn btn-outline-primary">Agregar</a>
        </div>
    </div>
    
</asp:Content>

