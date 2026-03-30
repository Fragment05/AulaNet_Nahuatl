<%@ Page Title="" Language="C#" MasterPageFile="~/Form_int.Master" AutoEventWireup="true" CodeBehind="Temas.aspx.cs" Inherits="Aulanet_web.PaginasInternas.Temas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Estilos/estilos.css" rel="stylesheet" />


    <style>
        main {
            background: #F9F8F6;
            color: #424242;
        }

        /* ----- ESTILO AVATARES ----- */

        .avatar-btn {
            transition: 0.3s;
        }

            .avatar-btn:hover {
                transform: scale(1.15);
            }
    </style>



    <div class="container">
        <p class="text-center sesion-title fw-bolder fs-1  text-bg-success"
            data-es="Seleccione un tema"
            data-na="Xijtlapejpeni se tlamachtili">
            Seleccione un tema

        </p>


        <section class="contenedor-main row align-items-center">
            <main class="col-12">


                <div class="row mt-4 g-4 justify-content-center">

                    <!-- Tema 1 -->
                    <div class="col-6 col-md-4">
                        <a href="<%= ResolveClientUrl("~/Presentacion/ExamenFinal.aspx?leccion=1") %>"
                            class="btn avatar-btn w-100 d-flex justify-content-center align-items-center">
                            <div class="tarjeta-temas">
                                <img src="../Recursos/Imagenes/TemAlfabeto.png" width="290" style="border-radius: 10px; font-size: 40px;" />
                                <h1 data-es="Alfabeto" data-na="Tlahcuilōlli">Alfabeto
                                </h1>
                            </div>
                        </a>
                    </div>

                    <!-- Tema 2 -->
                    <div class="col-6 col-md-4">
                        <a href="<%= ResolveClientUrl("~/Presentacion/ExamenFinal.aspx?leccion=2") %>"
                            class="btn avatar-btn w-100 d-flex justify-content-center align-items-center">
                            <div class="tarjeta-temas">
                                <img src="../Recursos/Imagenes/TemNumeros.png" width="290" style="border-radius: 10px; font-size: 40px;" />
                                <h2 data-es="Numeros" data-na="Tlapōhualtin">Numeros
                                </h2>
                            </div>
                        </a>
                    </div>


                    <!-- Tema 3 -->
                    <div class="col-6 col-md-4">
                        <a href="<%= ResolveClientUrl("~/Presentacion/ExamenFinal.aspx?leccion=3") %>"
                            class="btn avatar-btn w-100 d-flex justify-content-center align-items-center">
                            <div class="tarjeta-temas">
                                <img src="../Recursos/Imagenes/TemColores.png" width="290" style="border-radius: 10px; font-size: 40px;" />
                                <h3 data-es="Colores" data-na="Tlapalli">Colores
                                </h3>
                            </div>
                        </a>
                    </div>


                    <!-- Tema 4 -->
                    <div class="col-6 col-md-4">
                        <a href="<%= ResolveClientUrl("~/Presentacion/ExamenFinal.aspx?leccion=4") %>"
                            class="btn avatar-btn w-100 d-flex justify-content-center align-items-center">
                            <div class="tarjeta-temas">
                                <img src="../Recursos/Imagenes/TemHistoria.png" width="290" style="border-radius: 10px; font-size: 40px;" />
                                <h4 data-es="Historia" data-na="Huehueh Tlahtōlli">Historia
                                </h4>
                            </div>
                        </a>
                    </div>


                    <!-- Tema 4 -->
                    <div class="col-6 col-md-4">
                        <a href="<%= ResolveClientUrl("~/Presentacion/ExamenFinal.aspx?leccion=5") %>"
                            class="btn avatar-btn w-100 d-flex justify-content-center align-items-center">
                            <div class="tarjeta-temas">
                                <img src="../Recursos/Imagenes/TemCultura.jpg" width="290" style="border-radius: 10px; font-size: 40px;" />
                                <h4 data-es="Cultura" data-na="Toltecayotl">Cultura
                                </h4>
                            </div>
                        </a>
                    </div>
                </div>
                <br />
                </main>
            </section>
        </div>
    
    <!-- MODAL RESULTADO EXAMEN -->
    <div class="modal fade" id="modalResultado" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">

                <div class="modal-header bg-success text-white">
                    <h5 class="modal-title">Resultado del examen</h5>
                </div>

                <div class="modal-body text-center">
                    <asp:Label ID="lblResultadoModal" runat="server" CssClass="fs-5 fw-bold"></asp:Label>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-bs-dismiss="modal">
                        Aceptar
                    </button>
                </div>

            </div>
        </div>
    </div>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
</asp:Content>
