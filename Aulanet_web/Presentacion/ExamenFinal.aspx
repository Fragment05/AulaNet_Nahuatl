<%@ Page Title="" Language="C#" MasterPageFile="~/Form_int.Master" AutoEventWireup="true" CodeBehind="ExamenFinal.aspx.cs" Inherits="Aulanet_web.Examenes.ExamenFinal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Estilos/estilos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <h1 class="text-center " id="tituloLeccion">
            <asp:Literal ID="litTitulo" runat="server" /></h1>
        <h4 class="text-center titulo-Video" id="subInfo">Examen</h4>


        <div class="text-center mb-3">
            ⏱ Tiempo: <span id="cronometro">00:00</span>
        </div>

        <asp:HiddenField ID="hfTiempoExamen" runat="server" />


        <asp:HiddenField ID="hfIdLeccion" runat="server" />

        <!-- Repeater: cada item = una pregunta -->
        <asp:Repeater ID="rpPreguntas" runat="server" OnItemDataBound="rpPreguntas_ItemDataBound">
            <ItemTemplate>
                <div class="card mb-3 p-3">
                    <asp:HiddenField ID="hfIdPregunta" runat="server" Value='<%# Eval("IdPregunta") %>' />
                    <h5><%# Container.ItemIndex + 1 %>. <%# Eval("Pregunta") %></h5>

                    <%-- imagen opcional de la pregunta --%>
                    <asp:Image ID="imgPregunta" runat="server" ImageUrl='<%# Eval("ImagenReferencia") %>'
                        Visible='<%# !String.IsNullOrEmpty(Eval("ImagenReferencia").ToString()) %>' CssClass="mb-2" Width="200px" />
                    <asp:RadioButtonList
                        ID="rblRespuestas"
                        runat="server"
                        RepeatDirection="Horizontal"
                        RepeatColumns="2"
                        CssClass="respuestas-botones"
                        DataTextField="Respuesta"
                        DataValueField="IdRespuesta">
                    </asp:RadioButtonList>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <div class="text-center mb-4">

            <!-- Boton modal-->
            <button type="button"
                class="btn btn-primary"
                data-bs-toggle="modal"
                data-bs-target="#modalConfirmarExamen">
                Terminar examen
            </button>

            <div class="modal fade"
                id="modalConfirmarExamen"
                tabindex="-1">

                <div class="modal-dialog modal-dialog-centered">

                    <div class="modal-content">

                        <div class="modal-header bg-warning">

                            <h5 class="modal-title">Confirmar envío de examen
                            </h5>

                            <button type="button"
                                class="btn-close"
                                data-bs-dismiss="modal">
                            </button>

                        </div>

                        <div class="modal-body text-center">
                            <i class="fa-solid fa-triangle-exclamation text-warning fs-2"></i>
                            <p class="fs-5">
                                ¿Estás seguro de terminar el examen?
                            </p>

                            <p class="text-danger">
                                No podrás volver a responderlo.
                            </p>

                        </div>

                        <div class="modal-footer justify-content-center">

                            <button
                                type="button"
                                class="btn btn-secondary"
                                data-bs-dismiss="modal">
                                Cancelar
                            </button>

                            <asp:Button
                                ID="btnConfirmarEnviar"
                                runat="server"
                                CssClass="btn btn-success"
                                Text="Sí, enviar examen"
                                OnClick="btnEnviar_Click" />

                        </div>

                    </div>

                </div>

            </div>

            <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="btn btn-secondary ms-2" OnClientClick="window.location.href='./Temas.aspx'; return false;" />
        </div>

        <div id="resultadoFinal" runat="server" visible="false">
            <h3>Resultado</h3>
            <asp:Label ID="lblResultado" runat="server" CssClass="lead" />
        </div>
    </div>

    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <script src="../JS/ConometroDeTiempo.js"></script>
    <script src="../JS/EnviarExamen.js"></script>
</asp:Content>
