<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="dropDownEjemplos.aspx.cs" Inherits="PokedexWeb.dropDownEjemplos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="row">
        <div class="col">
            <h4>DropDownList Estático</h4>
            <asp:DropDownList ID="ddlEstatico" CssClass="btn btn-outline-dark dropdown-toggle" runat="server">
                <asp:ListItem Text="Rojo" />
                <asp:ListItem Text="Amarillo" />
                <asp:ListItem Text="Azul" />
            </asp:DropDownList>
        </div>
        <div class="col">
            <h4>DropDownList desde DB</h4>
            <asp:DropDownList ID="ddlBD" CssClass="btn btn-outline-dark dropdown-toggle" runat="server"></asp:DropDownList>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col">
            <h4>Más ejemplos</h4>
            <p>
                <a href="../EjemplosConDropDown/dropDownListEnlazados.aspx">DropDownList Enlazados</a>
            </p>
            <p>
                <a href="../EjemplosConDropDown/updatePanel.aspx">Update Panel</a>
            </p>
            <p>
                <a href="../EjemplosConDropDown/dropDownListEnlazadosUpdatePanel.aspx">DropDownList Enlazados con Update Panel</a>
            </p>
        </div>
        <p>
                <a href="../EjemplosConDropDown/dropDownListSeleccionarElementos.aspx">Seleccion de elementos</a>
            </p>
        </div>
    </div>
</asp:Content>
