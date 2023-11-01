

function names() {
    var characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxy";
    var resultado = "";
    for (var i = 0; i < 10; i++) {
        resultado += characters.charAt(Math.floor(Math.random() * characters.length));
    }
    return resultado;
}



