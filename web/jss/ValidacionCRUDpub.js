/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validar(e){
	var teclado = (document.all) ? e.keyCode : e.which;
	if(teclado==8) return true;
	var patron = /[0-9\d]/;
	var tec = String.fromCharCode(teclado);
	return patron.test(tec);
}

function soloLetras(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toString();
    letras = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóú´´AÉÍÚÓ";
    especiales = [8,13, 37, 39, 6,  239];
   
    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }
    if(letras.indexOf(tecla) == -1 && !tecla_especial){
	alert('No se permiten numeros o caracteres especiales en este campo');
        return false;
      }
}

function Agregar(){
    
    var Nom_Proy, Res_Proy, Tec_Proy, Nom_Usu, Func_Proy;
    Nom_Proy = document.getElementById("Nom_Proy").value;
    Res_Proy = document.getElementById("Res_Proy").value;
    Tec_Proy = document.getElementById("Tec_Proy").value;
    Nom_Usu = document.getElementById("Nom_Usu").value;
    Func_Proy = document.getElementById("Func_Proy").value;
    
    
    
    if( Nom_Proy=="" || Res_Proy=="" || Tec_Proy=="" || Nom_Proy=="" || Func_Proy==""){
        alert('No dejes campos vacíos');
        return;
    }
    document.forms.insertar.action= "InsertarProyecto";
    document.insertar.submit();
}

function verificarProyecto(){
     var uv, up;
    uv = document.getElementById("uv").value;
    up = document.getElementById("up").value;
    
    
    if( up=="" || uv==""){
        alert('No dejes campos vacíos');
        return;
    }
    document.forms.verificarUsuario.action= "verficarProyecto";
    document.verificarUsuario.submit();
}
function Editar(){
    
    var nom2, pass2, em2;
    em2 = document.getElementById("em2").value;
    nom2 = document.getElementById("nom2").value;
    pass2 = document.getElementById("pass2").value;
    
    
    if( em2=="" || nom2=="" || pass2==""){
        alert('No dejes campos vacíos');
        return;
    }
    
    document.forms.editar.action= "EditarServlet2";
    document.editar.submit();
}

function contraseña(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toString();
    letras = "abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZáéíóú´´AÉÍÚÓ123456789_.@-,";
    especiales = [8,13, 37, 39, 6,  239];
   
    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }
    if(letras.indexOf(tecla) == -1 && !tecla_especial){
	alert('No se permite el caracter especial en este campo');
        return false;
      }
}


