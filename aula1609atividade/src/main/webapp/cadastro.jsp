<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Preencha seus dados pessoais:
		<form action="ServletCadastro" method="post">
			Nome: <input type="text" name="nome">
			Sobrenome: <input type="text" name="sobrenome"><br>
			Endereço residencial: <br>
			Rua: <input type="text" name="rua">
			Complemento: <input type="text" name="complemento"><br>
			Cidade: <input type="text" name="cidade">
			CEP: <input type="text" name="cep">
			Estado: <input type="text" name="estado"><br>
			Usuário: <input type="text" name="usuario">
			Senha: <input type="password" name="senha">
			<input type="submit" value="Próxima tela">
		</form>
</body>
</html>