<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Usuário</title>
</head>
<body>

	<h3>Editar</h3>
	<a href="listar.jsp">Voltar</a>
	<hr>

	<form action="editar.htm" method="post">
		ID:<input type="text" name="idUsuario" value="${usuario.idUsuario }"> <br><br>
		Nome:<input type="text" name="nome" value="${usuario.nome }"> <br><br>
		Sobrenome:<input type="text" name="sobrenome" value="${usuario.sobrenome }"> <br><br>
		E-Mail:<input type="text" name="email" value="${usuario.email }"> <br><br>
		Idade:<input type="text" name="idade" value="${usuario.idade }"> <br><br>
		<input type="submit" value="EDITAR">

	</form>
	${msg }


</body>
</html>