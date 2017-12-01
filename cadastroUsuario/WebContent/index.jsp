<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro</title>
</head>
<body>
	<h3>CADASTRO DE USUÁRIOS</h3>
	<hr>

	<form action="cadastrar.htm" method="post">

		Nome: <input type="text" name="nome"> <br><br>
		Sobrenome: <input type="text" name="sobrenome"> <br><br>
		Idade: <input type="text" name="idade"> <br><br>
		E-Mail: <input type="text" name="email"> <br><br>
		<input type="submit" value="CADASTRAR">

	</form>
	<p align="justify">
		<strong> ${msg } </strong>
	</p>


</body>
</html>