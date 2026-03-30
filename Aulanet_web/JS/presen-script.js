

document.addEventListener("DOMContentLoaded", function () {

    const boton = document.getElementById("presenBtnTop");

    if (!boton) return;

    window.addEventListener("scroll", function () {

        if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight - 10) {
            boton.classList.add("presen-btn-visible");
        } else {
            boton.classList.remove("presen-btn-visible");
        }

    });

    boton.addEventListener("click", function () {
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    });

}); 



function leerTextoManual() {

    let parrafo = document.getElementById("parrafoConocenos");

    if (!parrafo) return;

    let texto = parrafo.innerText;

    let mensaje = new SpeechSynthesisUtterance(texto);
    mensaje.lang = "es-MX";
    mensaje.rate = 0.9;

    window.speechSynthesis.cancel();
    window.speechSynthesis.speak(mensaje);
}
