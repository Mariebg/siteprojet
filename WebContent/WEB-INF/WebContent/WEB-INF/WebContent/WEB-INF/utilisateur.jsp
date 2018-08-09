<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>utilisateur</title>
</head>
<body>

<h1>Bonjour </h1>

<form action = administrateur method="get">
	<div align="center"> ${! empty erreur ? erreur: '' }</div>
	
	email : <input type="text" name="mail" value="${mail}"><br>
	<c:if test="${mail ==''}"> Le champ est vide </c:if>
	password : <input type="password" name="password" value="${password}"><br>
	<c:if test="${password ==''}"> Le champ est vide </c:if>
 	
 	<button type="submit" value="validez">Submit</button>
 	 
	
	
</form>

</body>
</html>