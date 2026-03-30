<%@ Page Title="" Language="C#" MasterPageFile="~/Form_int.Master" AutoEventWireup="true" CodeBehind="Perfilusuario.aspx.cs" Inherits="Aulanet_web.PaginasInternas.Perfilusuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Estilos/estilos.css" rel="stylesheet" />

    <div class="perfus-wrapper">



        <div class="perfus-container">

            <!-- IMAGEN USUARIO -->
            <div class="perfus-img">
                <div class="perfus-avatar">
                    <i class="fa-solid fa-user"></i>
                </div>
            </div>

            <!-- INFORMACIÓN -->
            <div class="perfus-info">

                <h2 data-es="Información del perfil"
                    data-na="Tlatequipanolli tlen perfil">Información del perfil
                </h2>

                <div class="perfus-dato">
                    <span data-es="Nombre"
                        data-na="Tocaitl">Nombre</span>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="perfus-dato">
                    <span data-es="Apellido paterno"
                        data-na="Apellido paterno">Apellido paterno</span>
                    <asp:TextBox ID="txtApellidoP" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="perfus-dato">
                    <span data-es="Apellido materno"
                        data-na="Apellido materno">Apellido materno</span>
                    <asp:TextBox ID="txtApellidoM" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="perfus-dato">
                    <span data-es="Edad"
                        data-na="Xihuitl">Edad</span>
                    <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="perfus-dato">
                    <span data-es="Correo electrónico"
                        data-na="Correo electrónico">Correo electrónico</span>
                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <!-- BOTONES -->
                <div class="perfus-botones">

                    <asp:Button
                        ID="btnModificar"
                        runat="server"
                        Text="Modificar datos"
                        CssClass="btn btn-warning"
                        OnClick="btnModificar_Click" />

                    <asp:Button
                        ID="btnEliminar"
                        runat="server"
                        Text="Eliminar cuenta"
                        CssClass="btn btn-danger"
                        OnClick="btnEliminar_Click"
                        OnClientClick="return confirm('¿Seguro que quieres eliminar tu cuenta?');" />

                </div>

            </div>

        </div>
    </div>
    <!-- BOTÓN REGRESAR -->
    <div class="perfus-back">
        <a href="../Presentacion/Temas.aspx" class="btn btn-success">
            <i class="fa-solid fa-arrow-left"></i>
            <span data-es="Regresar" data-na="Mokuepa">Regresar</span>
        </a>
    </div>
</asp:Content>
