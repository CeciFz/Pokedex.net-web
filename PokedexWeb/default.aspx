<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="PokedexWeb._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Home</h1>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%--        <% foreach (Dominio.Pokemon poke in ListaPokemon)
            { %>
        <div class="col">
            <div class="card">
                <img src="<%: poke.UrlImagen %>" class="card-img-top" alt="imagen-pokemon">
                <div class="card-body">
                    <h5 class="card-title"><%: poke.Nombre %> </h5>
                    <p class="card-text"><%: poke.Descripcion %> </p>
                    <a href="detallePokemon.aspx?Id= <%: poke.Id %> ">Ver detalle</a>
                </div>
            </div>
        </div>
        <%}%>--%>

        <asp:Repeater runat="server" ID="repRepetidor">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="imagen-pokemon">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %> </h5>
                            <p class="card-text"><%#Eval("Descripcion")%> </p>
                            <p class="card-text"><%#Eval("Tipo")%> </p>
                            <a href="detallePokemon.aspx?Id= <%#Eval("Id") %> ">Ver detalle</a>
                            <asp:Button Text="Ejemplo" runat="server" CssClass="btn btn-primary" ID="btnEjemplo" CommandArgument='<%#Eval("Id")%>' CommandName="PokemonId" OnClick="btnEjemplo_Click"/>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>



</asp:Content>
