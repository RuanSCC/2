<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar</title>
</head>
<body>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<h3>LISTAGEM DE USUÁRIOS</h3>
<a href="index.jsp">Voltar</a>
<hr>

<table style="50%" border="1" bordercolor="DodgerBlue">
  <tr bgcolor="LightGray">
    <th>ID</th>
    <th>NOME</th>
    <th>SOBRENOME</th>
    <th>IDADE</th>
    <th>E-MAIL</th>
  </tr>
  
  
  <tr>
  	<td>id</td>
    <td>nome</td>
    <td>sobrenome</td>
    <td>idade</td>
    <td>email</td>
  </tr>


</table>


</body>
</html>