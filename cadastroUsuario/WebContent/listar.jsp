<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar</title>
</head>
<body>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

	<h3>LISTAGEM DE USUÁRIOS</h3>
	<a href="index.jsp">Voltar</a>
	<hr>


	<form action="listar.htm" method="post">
		<input type="submit" value="LISTAR">
	</form>

	<c:if test="${fn:length(lista) > 0 }">
		<table style="" border="1" bordercolor="DodgerBlue">
			<tr bgcolor="LightGray">
				<th>ID</th>
				<th>NOME</th>
				<th>SOBRENOME</th>
				<th>IDADE</th>
				<th>E-MAIL</th>
				<th>EDITAR</th>
				<th>EXCLUIR</th>
			</tr>

			<c:forEach items="${lista }" var="l">
				<tr>
					<td>${l.idUsuario}</td>
					<td>${l.nome}</td>
					<td>${l.sobrenome}</td>
					<td>${l.idade}</td>
					<td>${l.email}</td>
					<td><button >EDITAR</button></td>
					<td><button>EXCLUIR</button> </td>
				</tr>
			</c:forEach>
		</table>
	</c:if>


</body>
</html>