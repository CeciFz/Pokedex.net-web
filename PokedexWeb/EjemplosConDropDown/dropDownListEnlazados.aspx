<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="dropDownListEnlazados.aspx.cs" Inherits="PokedexWeb.EjemplosConDropDown.dropDownListEnlazados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="row">
        <div class="col">
            <h4>DropDownlist Enlazados</h4>
        </div>
    </div>
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
</asp:Content>
