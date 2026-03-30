<%@ Page Title="" Language="C#" MasterPageFile="~/Form_ext.Master" AutoEventWireup="true" CodeBehind="Acceso.aspx.cs" Inherits="Aulanet_web.PaginasExternas.Presentacion" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Estilos/estilos.css" rel="stylesheet" />
    <link href="../Awesome/css/fontawesome.css" rel="stylesheet" />
    <link href="../Awesome/css/solid.css" rel="stylesheet" />
    <link href="../Awesome/css/brands.css" rel="stylesheet" />

    <div class="sesion-wrapper">
        <!-- Cuadro central -->
        <div class="sesion-card">

            <h2 class="sesion-title"
                data-es="Crear cuenta"
                data-na="Mochiua cuenta">Crear cuenta
            </h2>


            <div class="sesion-grid">

                <div>
                    <label data-es="Nombre" data-na="Tocaitl">Nombre</label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
                </div>

                <div>
                    <label data-es="Apellido paterno" data-na="Apellido paterno">Apellido paterno</label>
                    <asp:TextBox ID="txtApellidoP" runat="server" CssClass="form-control" />
                </div>

                <div>
                    <label data-es="Apellido materno" data-na="Apellido materno">Apellido materno</label>
                    <asp:TextBox ID="txtApellidoM" runat="server" CssClass="form-control" />
                </div>

                <div>
                    <label data-es="Edad" data-na="Xihuitl">Edad   </label>
                    <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" TextMode="Number" />
                </div>

                <div>
                    <label data-es="Fecha de nacimiento" data-na="Tlacatilis">Fecha de nacimiento</label>
                    <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date" CssClass="form-control" />
                </div>

                <div>
                    <label data-es="Estado" data-na="Esthalti">Estado</label>
                    <asp:DropDownList
                        ID="ddlEstado"
                        runat="server"
                        CssClass="form-control"
                        AutoPostBack="true"
                        OnSelectedIndexChanged="ddlEstado_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>

                <div>
                    <label data-es="Municipio" data-na="Municipio">Municipio</label>
                    <asp:DropDownList
                        ID="ddlMunicipio"
                        runat="server"
                        CssClass="form-control">
                    </asp:DropDownList>
                </div>

                <div>
                    <label data-es="Correo electrónico" data-na="Correo electrónico">Correo electrónico</label>
                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" />
                </div>

                <div>
                    <label data-es="Contraseña" data-na="Tlatquitl">Contraseña</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                </div>

                <div>
                    <label data-es="Confirmar contraseña" data-na="Confirmar contraseña">Confirmar contraseña</label>
                    <asp:TextBox ID="txtConfirmarPassword" runat="server" TextMode="Password" CssClass="form-control" />
                </div>

            </div>





            <!-- Botones -->
            <div class="sesion-buttons">
                <asp:Button ID="btnRegistro" runat="server" Text="Crear Cuenta" CssClass="btn btn-success" OnClick="btnRegistro_Click" />

            </div>

        </div>

        <!-- Botón regresar -->
        <div class="sesion-back">
            <a href="presentacion.aspx"
                class="btn btn-success">

                <i class="fa-solid fa-arrow-left me-2"></i>
                <span data-es="Regresar"
                    data-na="Mokuepa">Regresar
                </span>

            </a>
        </div>
    </div>

</asp:Content>
