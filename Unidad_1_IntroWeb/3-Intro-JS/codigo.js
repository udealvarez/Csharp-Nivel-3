function saludar(){
    let user = document.getElementById("txtUser").value;
    let pass = document.getElementById("txtPass").value;

    alert("Te damos la bienvenida " + user);
    console.log("Tu pass no es secreta .. mira " + pass);
}

function sumar(){
    let n1 = parseInt(document.getElementById("txtUser").value);
    let n2 = parent(document.getElementById("txtPass").value);

    alert("la suma es: " + (n1 + n2));
}
