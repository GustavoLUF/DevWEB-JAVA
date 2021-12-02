<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Header</title>
</head>

<script>
function saudacao(){						//fun��o que da uma sauda��o ao usu�rio Professor
	document.getElementById("saud").innerHTML="Ol�, Professor.";
}

function construirArray(qtdElementos){		//fun��o que controi um relogio + dia da semana + data
    this.length = qtdElementos
}

    var    arrayDia = new construirArray(7);
    arrayDia[0] = "Domingo";
    arrayDia[1] = "Segunda-Feira";
    arrayDia[2] = "Ter�a-Feira";
    arrayDia[3] = "Quarta-Feira";
    arrayDia[4] = "Quinta-Feira";
    arrayDia[5] = "Sexta-Feira";
    arrayDia[6] = "Sabado";

    var arrayMes = new construirArray(12);
    arrayMes[0] = "Janeiro";
    arrayMes[1] = "Fevereiro";
    arrayMes[2] = "Mar�o";
    arrayMes[3] = "Abril";
    arrayMes[4] = "Maio";
    arrayMes[5] = "Junho";
    arrayMes[6] = "Julho";
    arrayMes[7] = "Agosto";
    arrayMes[8] = "Setembro";
    arrayMes[9] = "Outubro";
    arrayMes[10] = "Novembro";
    arrayMes[11] = "Dezembro";

function mostrarDataHora(hora, diaSemana, dia, mes, ano){
    retorno  = hora + " ";
    retorno += "&nbsp;&nbsp;-&nbsp;&nbsp;"+diaSemana+", "+dia+" de "+mes+" de "+ano;

    document.getElementById("datahora").innerHTML = retorno;
}

function getMesExtenso(mes){
    return this.arrayMes[mes];
}

function getDiaExtenso(dia){
    return this.arrayDia[dia];
}

function atualizarDataHora(){ 
    dataAtual = new Date();
    dia = dataAtual.getDate();
    diaSemana = getDiaExtenso(dataAtual.getDay());
    mes = getMesExtenso(dataAtual.getMonth());
    ano = dataAtual.getFullYear();
    hora = dataAtual.getHours();
    minuto = dataAtual.getMinutes();
    segundo = dataAtual.getSeconds();

    horaImprimivel = hora + ":" + minuto + ":" + segundo;
    mostrarDataHora(horaImprimivel, diaSemana, dia, mes, ano);
    setTimeout("atualizarDataHora()",1000);
} 

</script>

<body onload="atualizarDataHora()" onpageshow="saudacao()"> <!-- chama a fun��o -->
	<b id="saud"></b>
    <div id="datahora"></div>
</body>
</html>