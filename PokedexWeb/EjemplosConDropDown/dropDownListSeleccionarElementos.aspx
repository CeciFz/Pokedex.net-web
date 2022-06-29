<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="dropDownListSeleccionarElementos.aspx.cs" Inherits="PokedexWeb.EjemplosConDropDown.dropDownListSeleccionarElementos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <h3>Desplegable pre seleccionado</h3>
    <div class="mb-3 row">
        <asp:Label Text="ID" runat="server" CssClass="col-sm-1 col-form-label" />
        <div class="col-sm-5">
            <asp:TextBox runat="server" ID="txtIdTipo" CssClass="form-control" />
        </div>
        <div class="col">
            <asp:Label Text="Tipo Preseleccionado" runat="server" CssClass="form-label" />
            <asp:DropDownList ID="ddlTipoPreSeleccionado" runat="server" CssClass="btn btn-outline-dark dropdown-toggle">
            </asp:DropDownList>
        </div>
    </div>
    <div class="mb-3 row">
        <div class="col">
            <asp:Button ID="btnSeleccionar" runat="server" Text="Aceptar" cssClass="btb btn-primary" OnClick="btnSeleccionar_Click"/>
        </div>
    </div>
</asp:Content>
