<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Autentica��o</title>
</head>
<body>
<form action="login" method="post">
<table>
<tr><td colspan="2">
<div id="erro" style="color:red;">
${mensagem}
</div>
</td></tr>
<tr>
<td>Nome:</td>
<td><input name="nome"></td>
</tr>
<tr>
<td>Senha:</td>
<td><input name="senha" type="password"></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit">
</td></tr></table>
</form>

</body>
</html>