<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro de Disciplina e Notas</title>
<%@include file="functions.jsp"%>
<center><%@include file="header.jsp" %></center>

</head>
<body>
	<br/><br/>
	<center><h4>Aqui você pode cadastrar a Disciplina e sua Nota Final.</h4>
	
<!-- form com os campos e button para cadastro da disciplina -->
	<form action="cadastroDisciplina.jsp" method="post">		
		Nome da Disciplina: <input id="nomeDisciplina" type="text"/><br/>
		Nota Final: <input id="notaFinal" type="text" onkeypress="return soNumero();" /><br/>
		<input type="button" id="tabelaCadastro" value="Cadastrar" onclick="cadastrarDisciplina();"/>
		
	</form></br>
	<form action="menu.jsp">
		<input type="submit" value="Volta p/ Menu">
	</form></br></br>
	<!-- Tabela com cabeçalho e um exemplo de disciplina -->
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