

let segundos = 0;

function actualizarCronometro() {

    segundos++;

    let minutos = Math.floor(segundos / 60);
    let seg = segundos % 60;

    if (seg < 10) seg = "0" + seg;
    if (minutos < 10) minutos = "0" + minutos;

    document.getElementById("cronometro").innerText = minutos + ":" + seg;

    document.getElementById("<%=hfTiempoExamen.ClientID%>").value = segundos;
}

setInterval(actualizarCronometro, 1000);
