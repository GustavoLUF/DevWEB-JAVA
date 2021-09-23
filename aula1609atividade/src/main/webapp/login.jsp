<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login do Usuário</title>
</head>
<body>
<script type="text/javascript">protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    doPost(req, resp);
}
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    HttpSession s = req.getSession();
    s.getAttribute("user");
    s.getAttribute("senha");}</script>
	<form action="ServletLogin" method='post'>
		Usuário: <input type="text" name="usuario1"><br>
		Senha: <input type="password" name="senha1"><br>
		<input type="submit" value="Autenticar">
	</form>
</body>
</html>