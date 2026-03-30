<%@ Page Title="" Language="C#" MasterPageFile="~/Form_ext.Master" AutoEventWireup="true" CodeBehind="Presentacion.aspx.cs" Inherits="Aulanet_web.PaginasExternas.Acceso" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" onsubmit="return false;">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Estilos/estilos.css" rel="stylesheet" />
    <link href="../Awesome/css/fontawesome.css" rel="stylesheet" />
    <link href="../Awesome/css/solid.css" rel="stylesheet" />
    <link href="../Awesome/css/brands.css" rel="stylesheet" />
    <link href="../Awesome/css/all.min.css" rel="stylesheet" />
    <div class="presen-wrapper">



        <!-- BLOQUE 1 -->
        <section id="principal" class="presen-seccion presen-grid-2">


            <div class="presen-contenedor-info">

                <div>
                    <br>
                    <br />

                    <h2 data-es="Conócenos"
                        data-na="Xitechmouittacan">Conócenos 
        
     
                    </h2>

                    <p id="parrafoConocenos"
                        class="presen-parrafo"
                        data-es="Aul@Net brinda educación accesible e inclusiva para todas las personas, ofreciendo herramientas digitales que facilitan el aprendizaje sin importar la comunidad, el idioma o la condición social. Nuestro objetivo es reducir la brecha educativa y fortalecer el desarrollo académico mediante tecnología innovadora. A través de contenidos interactivos, recursos visuales y un entorno amigable, buscamos que cada usuario pueda aprender a su propio ritmo, descubrir nuevos conocimientos y fortalecer sus habilidades. Al pulsar el botón de abajo, comenzarás una nueva aventura de aprendizaje donde el conocimiento, la cultura y la tecnología se unen para ayudarte a crecer."
                        data-na="Aul@Net temaka nemachtilistli amo patiyo wan inklusivo para nochi masewalmeh, kinmaka tlamantli digitales tlen kipalehuia momachtia maski kanin chantih, tlen tlajtolli kipiayaj o tlen nemilistli kipiaj. Totekiwilis kuali kichiua para ma mopanoltia in tlamachtiliztli wan ma mochikaua in momachtiani ika tecnología yankuik. Ipan in plataforma kuali motta tlamantli interactivo, tlamachtili ika tlachiyalistli wan se nemilistli tlen kuali kinpalehuia masewalmeh ma momachtikan ika inemilis. Ika tla tikpachoas in botón tlen tlase, tikpewas se yankuik aventura tlen momachtia, kanin tlamachtiliztli, cultura wan tecnología mosentlalilia para mitspalehuia timoskaltis.">
                        Aul@Net brinda educación accesible e inclusiva para todas las personas, ofreciendo herramientas digitales que facilitan el aprendizaje sin importar la comunidad, el idioma o la condición social. Nuestro objetivo es reducir la brecha educativa y fortalecer el desarrollo académico mediante tecnología innovadora.

                        A través de contenidos interactivos, recursos visuales y un entorno amigable, buscamos que cada usuario pueda aprender a su propio ritmo, descubrir nuevos conocimientos y fortalecer sus habilidades.

                        Al pulsar el botón de abajo, **la aventura del aprendizaje comenzará**, invitándote a explorar nuevos conocimientos, desarrollar tus capacidades y formar parte de una experiencia educativa que une conocimiento, tecnología y aprendizaje.
                    </p>

                    <br>
                    <br />



                </div>
                <div style="text-align: center;">

                    <a href="<%= ResolveClientUrl("~/Presentacion/Acceso.aspx") %>"
                        class="presen-btn-accion"
                        style="padding: 30px 20px; font-family: Impact; font-size: 30px;"
                        data-es="Comenzar"
                        data-na="Pewalistli">Comenzar
                    </a>

                </div>
                <br>
                <br />

            </div>



        </section>

        <br />
        <br>
        <br />
        <br>
        <br />

        <!-- BLOQUE 2.1 -->
        <section class="presen-seccion">

            <div class="bloque-info degradado-seccion">

                <div class="bloque-texto">

                    <h2 class="presen-titulo"
                        data-es="Problemática"
                        data-na="Tlamantli tlen amo kuali">Problemática
                    </h2>

                    <p class="presen-parrafo"
                        data-es="En el entorno digital actual, muchas personas buscan aprender nuevas habilidades, reforzar conocimientos o avanzar académicamente; sin embargo, no siempre encuentran plataformas educativas que sean claras, organizadas y motivadoras. Frecuentemente el contenido se presenta de forma desestructurada, sin seguimiento del progreso ni retroalimentación constante, lo que puede generar frustración, desinterés y abandono del aprendizaje. Además, la falta de experiencias interactivas y visuales limita la comprensión profunda de los temas y dificulta el desarrollo de competencias digitales fundamentales."
                        data-na="Ipan in nemilistli digital tlen axkan, miakeh masewalmeh kinekih momachtiseh yankuik tlamantli, mochikauaseh wan momachtiseh okachi; pero amo nochipa kiseliah plataformas educativas tlen kuali, tlatskan wan kipiah yolilistli. Miakpa in tlamachtiliztli amo kuali motlalia, amo kipia tlachiyalistli in progreso wan amo kipia kuali tlatemolistli, tlen kichiua ma mopoloa in yolilistli para momachtia. Noijki amo miak tlamantli interactivo wan tlachiyalistli tlen kipalehuia kuali momachtilia.">
                        En el entorno digital actual, muchas personas buscan aprender nuevas habilidades, reforzar conocimientos o avanzar académicamente; sin embargo, no siempre encuentran plataformas educativas claras y motivadoras.
                    </p>

                </div>

                <div class="bloque-imagen">
                    <img src="../Recursos/Imagenes/mexicophoto1.jpeg">
                </div>

            </div>

        </section>


        <!-- BLOQUE 2.2 -->
        <section class="presen-seccion">

            <div class="bloque-info degradado-seccion bloque-reversa">

                <div class="bloque-texto">

                    <h2 class="presen-titulo"
                        data-es="Solución"
                        data-na="Tlapalehuilli">Solución
                    </h2>

                    <p class="presen-parrafo"
                        data-es="Aul@Net propone una experiencia educativa digital innovadora basada en módulos progresivos, contenido interactivo, evaluaciones dinámicas y seguimiento del desempeño del usuario. La plataforma permite aprender a un ritmo personalizado, visualizar avances, reforzar áreas de oportunidad y desarrollar habilidades tecnológicas esenciales. Mediante recursos visuales, actividades prácticas y entornos amigables, se busca transformar el aprendizaje en una experiencia motivadora, moderna y efectiva."
                        data-na="Aul@Net temaka se yankuik experiencia digital para momachtia, ika módulos progresivos, tlamantli interactivo wan tlatemolistli dinámico. In plataforma kipalehuia ma momachtia se masewal ika inemilis, ma kitta iprogreso wan ma mochikaua ipoder tecnológico. Ika tlachiyalistli wan tlamantli prácticos, mochihua se experiencia kuali wan yolpaki para momachtia.">
                        Aul@Net propone una experiencia educativa digital innovadora basada en módulos progresivos y seguimiento del desempeño del usuario.
                    </p>

                </div>

                <div class="bloque-imagen">
                    <img src="../Recursos/Imagenes/mexicophoto2.jpeg">
                </div>

            </div>

        </section>


        <!-- BLOQUE 2.3 -->
        <section class="presen-seccion">

            <div class="bloque-info degradado-seccion">

                <div class="bloque-texto">

                    <h2 class="presen-titulo"
                        data-es="¿A quién va dirigido?"
                        data-na="¿Akin para?">¿A quién va dirigido?
                    </h2>

                    <p class="presen-parrafo"
                        data-es="Aul@Net está dirigido a personas de 10 años en adelante interesadas en fortalecer sus conocimientos académicos, desarrollar nuevas competencias y adaptarse a los entornos digitales actuales. Es ideal para estudiantes, jóvenes y adultos que desean aprender de forma autónoma, mejorar su rendimiento escolar o adquirir herramientas que contribuyan a su crecimiento personal y profesional. La plataforma puede utilizarse desde distintos dispositivos, permitiendo estudiar en cualquier momento y lugar."
                        data-na="Aul@Net para masewalmeh tlen kipiah majtlaktli xiwitl wan okachi tlen kinekih mochikauaseh ipan momachtia, momachtiseh yankuik tlamantli wan mosentlaliseh ipan nemilistli digital. Kuali para estudiantes, telpokameh wan huehueh masewalmeh tlen kinekih momachtiseh ika inemilis wan mochikauaseh ipan nemilistli. In plataforma huel motekipanoa ipan miak dispositivos wan ipan nochi tonalmeh.">
                        Aul@Net está dirigido a personas de 10 años en adelante interesadas en fortalecer sus conocimientos académicos y desarrollar nuevas competencias.
                    </p>

                </div>

                <div class="bloque-imagen">
                    <img src="../Recursos/Imagenes/mexicophoto3.jpeg">
                </div>

            </div>

        </section>



        <!-- BLOQUE 3 -->
        <section id="nosotros" class="presen-seccion">
            <br />
            <br>
            <br />
            <br>
            <br />
            <br />
            <br />
            <h2 class="presen-titulo"
                data-es="Desarrolladores"
                data-na="Tlachijchijketl">Desarrolladores
            </h2>

            <div class="presen-grid-2">


                <div class="presen-card">
                    <img class="presen-foto" src="../Recursos/Imagenes/joelicon.png">
                    <h3>Joshua Joel Huerta Mastranzo</h3>
                    <p>Programador y Diseñador</p>
                </div>

                <div class="presen-card">
                    <img class="presen-foto" src="../Recursos/Imagenes/joshicon.png">
                    <h3>Joscelyn Paola Jiménez González</h3>
                    <p>Programador y Tester</p>
                </div>

            </div>

        </section>

        <br>
        <br />

        <!-- BLOQUE 4 -->
        <section id="caracteristicas" class="container presen-seccion mt-5">
            <br>
            <br />
            <br>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="row align-items-center g-4">

                <!-- TEXTO -->
                <div class="col-12 col-lg-6">

                    <h3
                        data-es="Características"
                        data-na="Tlamantli tlen kipia">Características
                    </h3>

                    <p class="presen-parrafo"
                        data-es="Plataforma interactiva, dinámica y completamente bilingüe (Español - Náhuatl), diseñada para facilitar el aprendizaje mediante una experiencia intuitiva y accesible para todos los usuarios."
                        data-na="Nemachtilistli tlen moneki, yolkuali wan bilingüe (Español - Náhuatl), tlen mochijchiwa para ma kuali momachtikan nochi tlakatl.">
                        Plataforma interactiva, dinámica y completamente bilingüe (Español - Náhuatl), diseñada para facilitar el aprendizaje mediante una experiencia intuitiva y accesible para todos los usuarios.
                    </p>

                    <p class="presen-parrafo"
                        data-es="Incluye herramientas visuales, navegación sencilla y contenido adaptado para fortalecer la identidad cultural y el uso de la lengua náhuatl en entornos digitales."
                        data-na="Kipia tlamantli tlen mochijchiwa para ma kuali nejnemi, kualli nemilistli wan tlamachtilli para ma moskaltia in tlajtolli náhuatl ipan mundo digital.">
                        Incluye herramientas visuales, navegación sencilla y contenido adaptado para fortalecer la identidad cultural y el uso de la lengua náhuatl en entornos digitales.
                    </p>

                    <p class="presen-parrafo"
                        data-es="Desarrollada con tecnologías modernas que permiten escalabilidad, mantenimiento eficiente y una experiencia rápida y segura."
                        data-na="Mochijchiwa ika tecnología yankuik tlen kuali kikualtia, kipia chikawalistli wan kuali nemilistli ipan tlamachtiliztli.">
                        Desarrollada con tecnologías modernas que permiten escalabilidad, mantenimiento eficiente y una experiencia rápida y segura.
                    </p>

                </div>


                <!-- IMÁGENES -->
                <div class="col-12 col-lg-6 presen-img-placeholder2">

                    <div class="row text-center">

                        <div class="col-6 col-md-6">
                            <img src="<%= ResolveClientUrl("~/Recursos/Imagenes/phone1.png") %>"
                                alt="Vista previa celular 1"
                                class="img-fluid-center"
                                style="max-width: 230px;">
                        </div>

                        <div class="col-6 col-md-6">
                            <img src="<%= ResolveClientUrl("~/Recursos/Imagenes/phone2.png") %>"
                                alt="Vista previa celular 2"
                                class="img-fluid"
                                style="max-width: 230px;">
                        </div>

                    </div>

                </div>

            </div>

        </section>

        <br>
        <br />
        <!-- BLOQUE 5 -->
        <section id="creado" class="container presen-seccion mt-5">

            <div class="row align-items-center g-4">

                <!-- MAPA -->
                <div class="col-12 col-lg-6">

                    <div class="ratio ratio-4x3">

                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.1215670679007!2d-98.15452582507044!3d19.05839195252563!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85cfc1c9a30530ab%3A0xefd33e2f1a6ca5a2!2sUniversidad%20Tecnol%C3%B3gica%20de%20Puebla!5e0!3m2!1ses!2smx!4v1771885301164!5m2!1ses!2smx"
                            style="border: 0;"
                            allowfullscreen=""
                            loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>

                    </div>

                </div>

                <!-- INFORMACIÓN -->
                <div class="col-12 col-lg-6 text-center presen-universidad">

                    <br>
                    <br>

                    <!-- LOGO -->
                    <div class="presen-logo-utp mb-3">
                        <img src="../Recursos/Imagenes/logo_utp.png"
                            alt="Logo UTP"
                            class="img-fluid"
                            style="max-width: 180px;">
                    </div>

                    <!-- NOMBRE -->
                    <h3
                        data-es="Universidad Tecnológica de Puebla"
                        data-na="Universidad Tecnológica de Puebla">Universidad Tecnológica de Puebla
                    </h3>


                    <!-- TEXTO INSTITUCIONAL -->
                    <p class="mt-3"
                        data-es="La Universidad Tecnológica de Puebla (UTP), a través de la División de Tecnologías de la Información, impulsa el proyecto Aul@Net, una iniciativa educativa digital que busca reducir la brecha educativa mediante el uso de recursos tecnológicos accesibles y culturalmente pertinentes."
                        data-na="Universidad Tecnológica de Puebla (UTP) kichiwa Tecnologías de la Información tlamachtiloyan, kuali tlamachtilistli Aul@Net tlen quipiya tlanextiliztli ika tecnología.">
                        La Universidad Tecnológica de Puebla (UTP), a través de la División de Tecnologías de la Información, impulsa el proyecto Aul@Net, una iniciativa educativa digital que busca reducir la brecha educativa mediante el uso de recursos tecnológicos accesibles y culturalmente pertinentes.
                    </p>

                    <p
                        data-es="El proyecto Aul@Net tiene como propósito ofrecer materiales educativos bilingües (en español y lenguas indígenas), adaptados al contexto lingüístico y cultural del estado de Puebla, facilitando un aprendizaje significativo, equitativo y contextualizado."
                        data-na="Aul@Net quipiya kuali tlamachtilistli ome tlatolli (español ihuan lenguas indígenas), tlen kuali mochihua ika tlatolli Puebla.">
                        El proyecto Aul@Net tiene como propósito ofrecer materiales educativos bilingües (en español y lenguas indígenas), adaptados al contexto lingüístico y cultural del estado de Puebla, facilitando un aprendizaje significativo, equitativo y contextualizado.
                    </p>

                    <p
                        data-es="Aul@Net está disponible para cualquier usuario que desee aprender, promoviendo el acceso libre y gratuito al conocimiento como un derecho universal."
                        data-na="Aul@Net huelis mochipa para nochi tlakatl tlen kineki momachtis, kuali machtilistli amo motlaxtlahua.">
                        Aul@Net está disponible para cualquier usuario que desee aprender, promoviendo el acceso libre y gratuito al conocimiento como un derecho universal.
                    </p>

                    <p
                        data-es="La plataforma integra herramientas de seguimiento del progreso académico, actividades interactivas y evaluaciones que fortalecen el aprendizaje autónomo."
                        data-na="Plataforma quipiya herramientas para tlanextiliztli machtilistli, actividades interactivas ihuan evaluación.">
                        La plataforma integra herramientas de seguimiento del progreso académico, actividades interactivas y evaluaciones que fortalecen el aprendizaje autónomo.
                    </p>

                </div>

            </div>

        </section>
        <div id="presenBtnTop"
            class="presen-btn-top"
            data-es="Subir 𖤂"
            data-na="Tlejko 𖤂">

            <i class="fa-solid fa-chevron-up presen-icono"></i>
            <span class="presen-texto">Subir</span>

        </div>
    </div>

    <script src="../JS/IdiomaConfig.js"></script>
    <script src="../JS/presen-script.js"></script>
</asp:Content>
