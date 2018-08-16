<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<LINK href="/css/siteProjet.css" rel="stylesheet" type="text/css">
<title>LoginSecurite</title>
</head>
<%@include file="css.jsp" %>

<body class="body-login-secur">

<h1 align ="center">L'identifant ou le mot de passe est incorrect. Veuillez recommencer .</h1>

	<div class="div-form-login">
		<br><br><br>
		<h1 class="h1-login">Connexion securisee</h1>
		
		<form action="j_security_check" method="post" name="loginForm"><br>	
		  	<br>
		  	<br>
		  	<br>  
		 	<input type = "text" class="input-login" id="user" name="j_username" placeholder="votre mail" required/><br><br>		 
	     	<input type = "password" class="input-login" id="password" name="j_password" placeholder="Mot de passe" required/>  	      
		  	<br>
		  	<br>  
			<br>  
		  	<br>
		  	<br>  
			<!--/// ENVOYER LE FORMULAIRE ///-->
      		<input type="submit" value="Valider" class="btn-login"/><br>
	</div>
</body>
</html> 