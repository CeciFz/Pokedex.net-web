<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="dropDownListEnlazadosUpdatePanel.aspx.cs" Inherits="PokedexWeb.EjemplosConDropDown.dropDownListEnlazadosUpdatePanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--    ScriptManager: requerido para usar Update Panel--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <hr />
    <h4>Desplegable desde la DB Enlazado + Update Panel</h4>

    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="row">
                <div class="col">
                    <asp:Label ID="lblTipo" runat="server" Text="Tipos"></asp:Label>
                    <asp:DropDownList ID="ddlTipos" CssClass="btn btn-outline-dark dropdown-toggle" AutoPostBack="true"
                        OnSelectedIndexChanged="ddlTipos_SelectedIndexChanged" runat="server">
                    </asp:DropDownList>
                </div>
                <div class="col">
                    <asp:Label ID="lblPokemons" runat="server" Text="Pokemon"></asp:Label>
                    <asp:DropDownList ID="ddlPokemonsFiltrados" CssClass="btn btn-outline-dark dropdown-toggle" runat="server">
                    </asp:DropDownList>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <hr />
</asp:Content>
