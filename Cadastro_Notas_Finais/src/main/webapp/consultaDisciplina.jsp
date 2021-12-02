<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Consulta Disciplinas/Notas</title>
<%@include file="functions.jsp"%>
<center><%@include file="header.jsp" %></center>
<script type="text/javascript">

	nDisc = discGlobal;
	nFinal = notaGlobal;
	var tabela = document.getElementById("registros");
	
	
	var novaLinha = tabela.insertRow(-1);
	var novoCadastroNome = novaLinha.insertCell(0);
	var novoCadastroNota = novaLinha.insertCell(1);
	
	novoCadastroNome.innerHTML = nDisc;
	novoCadastroNota.innerHTML = nFinal;
</script>
</head>
<body>
	<center><h3>Olá, aqui você consultará suas notas e disciplinas.</h3>
	<table id="registros" border="1">
		<tr>
			<th>Nome da Disciplina</th>
			<th>Nota Final</th>
		</tr>
		
		<tr>
			<td>Desenvolvimento Web</td>
			<td>9</td>
		</tr>
	</table>
	</center>
</body>
</html>