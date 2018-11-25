/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */




$(document).keydown(function(tecla){
    if (tecla.keyCode == 13) { 
       $("#Iniciar").click();
    }
});

function pass(e){
 key = e.keyCode || e.which;
 tecla = String.fromCharCode(key).toLowerCase();
 letras = "áéíóúabcdefghijklmnñopqrstuvwxyzÁÉÍÓÚABCDEFGHIJKLMNÑOPQRSTUVWXYZ0123456789";
 especiales = [8, 46];

 tecla_especial = false
 for(var i in especiales){
     if(key == especiales[i]){
  tecla_especial = true;
  break;
            } 
 }
 
        if(letras.indexOf(tecla)==-1 && !tecla_especial)
     return false;
}



var document;
var enviando=0;
function Validar(){
    var formulario=document.querySelector("#registro");
    var elementos = formulario.elements;
    var patron = /^([A-Za-zÑñáéíóúÁÉÍÓÚ ]+)$/;
    //Validando textbox completos
    for (var i = 0; i < elementos.length; i++) {
        if ((elementos[i].type === "text" || elementos[i].type === "password")&&i!=2) {
            if (elementos[i].value.length == 0) {
		swal("ERROR", 'Por favor llene el campo', "error");
		elementos[i].className = elementos[i].className + " error";
                elementos[i].focus();
		return false;
            }else if(elementos[i].value.length>25 &&(i==1||i==2||i==0||i==11)){
                //Validando campos nombre, appat, apmat y contraseña;
                swal("ERROR", "No ingreses mas de 25 carácteres en este campo", "error");
                elementos[i].className = elementos[i].className + " error";
                elementos[i].focus();
                return false;
            }else if((!patron.test([elementos[i].value])) &&(i==1||i==2||i==0)){
                swal("ERROR", "Por favor solo ingrese letras en este campo", "error");
                elementos[i].className = elementos[i].className + " error";
                elementos[i].focus();
                return false;
            }
            else {
                elementos[i].className = elementos[i].className.replace(" error", "");
            }
        }
    }
    //Validando contraseñas
    var p1= document.querySelector("#pass_usu"), 
        p2= document.querySelector("#pass_usu2");
    if(p1.value!==p2.value){
        swal("ERROR", "Las contraseñas ingresadas no coinciden", "error");
        p1.focus();
        p2.className= p2.className+" error";
        return false;
    }else if(p1.value.length<6){
        swal("ERROR", "Ingrese una contraseña de mínimo 6 caracteres", "error");
    }
    else{
        p2.className= p2.className.replace(" error","");
    }
    //Validando correo
    var emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
    var correo= document.querySelector("#Mail_usu");
    var alv=correo.value;
    if(!emailRegex.test(alv)){
        swal("ERROR", "introduce un correo valido", "error");
        correo.className= correo.className+" error";
        correo.focus();
        return false;
    }
 
    var correo= document.querySelector("#Mail_usu");
    if(correo.value.length>45){
        swal("ERROR", "No introduzca un correo tan largo, el máximo es de 45 caracteres", "error");
        correo.className += " error";
        correo.focus();
        return false;
    }
    else{
        correo.className= correo.className.replace(" error", "");
    }
    if(enviando===0) formulario.submit();
    else swal("Ya se ha registrado");
    enviando++;
}
























function soloLetras(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toString();
    letras = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóú´´AÉÍÚÓ";
    especiales = [8, 32, 239];
   
    tecla_especial = false;
    for(var i in especiales) {
        if(key === especiales[i]) {
            tecla_especial = true;
            break;
        }
    }
    if(letras.indexOf(tecla) === -1 && !tecla_especial){
        return false;
      }
}

function registrar() {
        
    var nom, appat, apmat, usu, pass, saldo;
    usu = document.getElementById("nom_usu").value;
    nom = document.getElementById("Curp_usu").value;
    pass = document.getElementById("Mail_usu").value;
    appat = document.getElementById("Pass_usu").value;
    apmat = document.getElementById("apmat").value;
    saldo = document.getElementById("sala").value;
    
    if( nom=="" || appat=="" || apmat=="" || usu=="" || pass=="" || saldo==""){
        swal('No dejes campos vacíos');
        return;
    }else{
        document.forms.registro.action = "Registro";
        document.registro.submit();
        $("#div-registro").remove();
        var loader = "<div class='row' id='loader'>"
                +"<div class='col-md-4 col-md-offset-4'>"
                    +"<img src='Imagenes/carritoo.gif' width='100%'>"
                    +"<h3 align='center'>Cargando...</h3>"
                +"</div>"
            +"</div>";
        $("#br-container").after(loader);
    }
}


function contrasena(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toString();
    letras = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóú´´AÉÍÚÓ1234567890_.-";
    especiales = [8,13, 39, 6,  239];
   
    tecla_especial = false;
    for(var i in especiales) {
        if(key === especiales[i]) {
            tecla_especial = true;
            break;
        }
    }
    if(letras.indexOf(tecla) === -1 && !tecla_especial){
        return false;
      }
}

function correo(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toString();
    letras = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóú´´AÉÍÚÓ1234567890_.-@";
    especiales = [8,13, 39, 6,  239];
   
    tecla_especial = false;
    for(var i in especiales) {
        if(key === especiales[i]) {
            tecla_especial = true;
            break;
        }
    }
    if(letras.indexOf(tecla) === -1 && !tecla_especial){
        return false;
      }
}


function curp(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toString();
    letras = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóú´´AÉÍÚÓ1234567890";
    especiales = [8, 32, 239];
   
    tecla_especial = false;
    for(var i in especiales) {
        if(key === especiales[i]) {
            tecla_especial = true;
            break;
        }
    }
    if(letras.indexOf(tecla) === -1 && !tecla_especial){
        return false;
      }
}

function Inicio(){
    
    var usu, pass;
    usu = document.getElementById("usu").value;
    pass = document.getElementById("pass").value;
    
    
    if( usu==="" || pass===""){
        swal('No dejes campos vacíos');
        return;
    }
    document.forms.iniciar.action= "contenido.jsp";
    document.iniciar.submit();
}





function validar(e){
	var teclado = (document.all) ? e.keyCode : e.which;
	if(teclado==8) return true;
	var patron = /[0-9\d]/;
	var tec = String.fromCharCode(teclado);
	return patron.test(tec);
}
