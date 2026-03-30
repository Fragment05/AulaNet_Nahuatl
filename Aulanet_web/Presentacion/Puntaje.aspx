<%@ Page Title="Puntaje" Language="C#" MasterPageFile="~/Form_int.Master"
    AutoEventWireup="true" CodeBehind="Puntaje.aspx.cs"
    Inherits="Aulanet_web.GestionUser.Puntaje" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" />

    <style>
        .examen-card {
            cursor: pointer;
            transition: 0.2s;
        }

            .examen-card:hover {
                transform: scale(1.02);
                background: #f8f9fa;
            }

        .trophy {
            width: 80px;
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid mt-3">

        <div class="row">

            <!-- COLUMNA IZQUIERDA -->
            <div class="col-md-4">

                <!-- PERFIL -->
                <div class="card mb-3">
                    <div class="card-body text-center">

                        <asp:Image
                            ID="imgUsuario"
                            runat="server"
                            CssClass="rounded-circle"
                            Width="100" />

                        <h5 class="mt-2">
                            <asp:Label ID="lblNombre" runat="server" />
                        </h5>

                        <p>
                            Edad:
                            <asp:Label ID="lblEdad" runat="server" />
                        </p>

                    </div>
                </div>


                <!-- BOTONES -->
                <div class="btn-group w-100 mb-3">

                    <asp:Button
                        ID="btnIndividual"
                        runat="server"
                        Text="Individual"
                        CssClass="btn btn-primary"
                        OnClick="btnIndividual_Click" />

                    <asp:Button
                        ID="btnGrupal"
                        runat="server"
                        Text="Grupal"
                        CssClass="btn btn-secondary"
                        OnClick="btnGrupal_Click" />

                </div>


                <h5>Exámenes</h5>

                <asp:Repeater ID="repExamenes" runat="server">

                    <ItemTemplate>

                        <div class="card examen-card mb-2"
                            onclick='<%# Convert.ToBoolean(Eval("Completado")) 
                            ? "seleccionarExamen(" + Eval("IdLeccion") + ")" 
                            : "alert(\"No has completado este examen\")" %>'>

                            <div class="card-body d-flex align-items-center">

                                <img src="../Recursos/Imagenes/lapiz.png" width="60" />

                                <div class="ms-3">

                                    <h6><%# Eval("Nombre") %></h6>

                                <span class="badge bg-success"
                                    runat="server"
                                    visible='<%# Convert.ToBoolean(Eval("Completado")) %>'>
                                    Completado
                                </span>

                                <span class="badge bg-warning"
                                    runat="server"
                                    visible='<%# !Convert.ToBoolean(Eval("Completado")) %>'>
                                    Incompleto
                                </span>

                                </div>

                            </div>

                        </div>

                    </ItemTemplate>

                </asp:Repeater>

            </div>


            <!-- COLUMNA DERECHA -->
            <div class="col-md-8">

                <!-- PANEL INDIVIDUAL -->
                <asp:Panel ID="panelIndividual" runat="server">

                    <div class="card">
                        <div class="card-body text-center">

                            <img src="../Recursos/Imagenes/taza.png" class="trophy" />

                            <h3>Puntaje</h3>

                            <h1>
                                <asp:Label ID="lblPuntaje" runat="server" />
                            </h1>

                            <h5 class="mt-3">Mejor puntaje de la lección: 
                                 <span class="text-success">
                                     <asp:Label ID="lblMejorPuntaje" runat="server" />
                                 </span>
                            </h5>
                        </div>

                    </div>

                    <hr />

                    <asp:Repeater ID="repPreguntas" runat="server">

                        <ItemTemplate>

                            <div class="card mb-2">

                                <div class="card-body">

                                    <b>Pregunta:</b>
                                    <%# Eval("Pregunta") %>

                                    <br />

                                    <b>Respuesta elegida:</b>
                                    <%# Eval("RespuestaElegida") %>

                                    <span class="px-5 text-success">
                                        <b>Respuesta Correcta:</b>
                                        <%# Eval("RespuestaCorrecta") %>
                                    </span>


                                </div>

                            </div>

                        </ItemTemplate>

                    </asp:Repeater>

                </asp:Panel>


                <!-- PANEL GRUPAL -->
                <asp:Panel ID="panelGrupal" runat="server" Visible="false">

                    <h3>Ranking</h3>

                    <asp:GridView
                        ID="gvRanking"
                        runat="server"
                        CssClass="table table-striped"
                        AutoGenerateColumns="true" />

                </asp:Panel>

            </div>

        </div>

    </div>


    <script>

        function seleccionarExamen(id) {
            window.location = "Puntaje.aspx?idLeccion=" + id;
        }

    </script>
    <br />
    <br />


    <!-- BOT0N REGRESAR -->
    <div class="perfus-back">
        <a href="../Presentacion/Temas.aspx" class="btn btn-success">
            <i class="fa-solid fa-arrow-left"></i>
            <span data-es="Regresar" data-na="Mokuepa">Regresar</span>
        </a>
    </div>

</asp:Content>
