<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
<c:when test="${login=='autenticado'}">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página protegida por autenticação</title>
</head>
<body>
<h1>
Este conteúdo somente será visível para quem previamente realizou o login.
</h1>
<a href="login">Sair - logout</a>
</body>
</html>
</c:when>
<c:otherwise>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="5;URL='login.jsp'" /> 
<title>Página protegida por autenticação</title>

</head>
<body>
<h1>
Necessário realizar autenticação. Direcionando ...
</h1>
</body>
</c:otherwise>
</c:choose>