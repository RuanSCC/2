<%@ page import="model.Usuario" %>
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
	
	<jsp:useBean id="u" class="control.ControleUsuario"></jsp:useBean>

	<h3>LISTAGEM DE USUÁRIOS</h3>
	<a href="index.jsp">Voltar</a>
	<hr>
	<p align="center">
		<strong> ${msg } </strong>
	</p>
	<hr>

	<form action="listar.htm" method="post">
		<input type="submit" value="LISTAR">
	</form>
	<br>

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

			<c:forEach items="${lista }" var="u">
				<tr>
					<td>${u.idUsuario}</td>
					<td>${u.nome}</td>
					<td>${u.sobrenome}</td>
					<td>${u.idade}</td>
					<td>${u.email}</td>
	 				<td bgcolor="LightGray"><a href="editar.htm?id=${u.idUsuario }">EDITAR</a></td>
					<td bgcolor="LightGray"><a href="deletar.htm?id=${u.idUsuario }" onclick="return confirm('Confirma a exclusão deste usuário?')">EXCLUIR</a></td>
				</tr>
			</c:forEach>
	
		</table>
	</c:if>


</body>
</html>