<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login do Sistema</title>
<%@include file="functions.jsp"%>
	<script type="text/javascript">
		function login(){ 										// Fun��o para determinar login de acesso, retornando respostas de erro.
			const user = document.getElementById("usuario");
			const pw = document.getElementById("senha");
			const form = document.getElementById("formulario");
			
			if(user.value =="professor" && pw.value =="Progweb2021"){
				formulario.submit();
			}else if(user.value !=0 && pw.value !=0){
				alert("Login ou senha Inv�lidos.")
			}else if(user.value ==0 && pw.value !=0){
				alert("Login n�o preenchido.")
			}else if(user.value != 0 && pw.value ==0){
				alert("Senha n�o preenchida.")
			}else{
				alert("Campos necess�rios.")
			}
		}
	</script>
</head>
<body>
	<form id="formulario" action="menu.jsp" method="post">
		Usu�rio: <br/><input type="text" name="usuario" id="usuario" onkeypress="return soLetra();" /><br/>
		Senha: <br/><input type="password" name="senha" id="senha" /><br/>
		
		<input type="button" value="Login" onclick="login()" />
	</form>
</body>
</html>