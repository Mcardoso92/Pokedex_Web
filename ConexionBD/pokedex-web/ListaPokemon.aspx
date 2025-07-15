<%@ Page Title="" Language="C#" MasterPageFile="~/MiMasterPage.Master" AutoEventWireup="true" CodeBehind="ListaPokemon.aspx.cs" Inherits="pokedex_web.ListaPokemon" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mi lista pokemon</h1>
    <div class="row">
        <div class="col">
            <asp:GridView ID="dgvPokemons" runat="server" CssClass="table" HeaderStyle-CssClass="table-dark" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Descripcion" DataField="Tipo.Descripcion" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    
</asp:Content>

