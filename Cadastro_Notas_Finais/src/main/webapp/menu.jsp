<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<center><%@include file="header.jsp" %></center>
</head>
<body>
<!-- Menu a partir do autentica com opções de cadastro, consulta e deslogar.-->
<br/><br/>
	<center>
	<h1>MENU</h1>
	<h2>Escolha umas das opções:</h2>
	<form action="cadastroDisciplina.jsp" method="post">
		<input type="submit" value="Cadastro de Disciplinas/Notas"/>
	</form>
	<br/>
	
	<form action="consultaDisciplina.jsp" method="post">
		<input type="submit" value="Consultar Disciplina e Notas"/>
	</form>
	<br/>
	
	<a href="autentica.jsp">Deslogar</a>
		
	</center>
</body>
</html>