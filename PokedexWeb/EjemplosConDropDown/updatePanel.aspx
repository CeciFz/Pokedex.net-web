<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="updatePanel.aspx.cs" Inherits="PokedexWeb.updatePanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    ScriptManager: requerido para usar Update Panel--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <hr />
    <h3>Update Panel</h3>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="form-group">
                <div class="row">
                    <div class="col">
                        <asp:Label ID="lblNombre" runat="server" Text="text"></asp:Label>
                    </div>
                    <div class="col">
                        <asp:TextBox ID="txtNombre" AutoPostBack="true" OnTextChanged="txtNombre_TextChanged" runat="server" CssClass="form-control"/>
                    </div>
                    <div class="col">
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" CssClass="form-control"/>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <hr />
    <div class="row">
        <div class="col">
            <h4>Más ejemplos</h4>
            <p>
                <a href="../EjemplosConDropDown/dropDownListEnlazadosUpdatePanel.aspx">DropDownList Enlazados con Update Panel</a>
            </p>
        </div>
    </div>
</asp:Content>
