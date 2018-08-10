<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<LINK href="/css/siteProjet.css" rel="stylesheet" type="text/css">
<title>Login</title>
</head>
	<%@include file="css.jsp" %>

<body>

	<div align="center"> ${! empty erreur? erreur : ''}</div>
	
	<div class="form-div">
		<form action="accueil" method="post"><br>	
		 	<input type = "text" class="input-login" id="login" name="login" value="${login}" placeholder="E-mail" required/><br>		 
		  		<c:if test="${login==''}">	<b>-----------------Entrez votre login</b></c:if><br>				  	  
	     	<input type = "password" class="input-login" id="psw" name="psw" value="${psw}" placeholder="Mot de passe" required/>  	      
		  		<c:if test="${psw==''}">	<b>-----------------Entrez votre mot de passe</b></c:if><br>
		  	<br>
		  	<br>  
			<br>  
		  	<br>
		  	<br>  
 			<!--/// ENVOYER LE FORMULAIRE ///-->
      		<input type="submit" value="Se connecter" class="btn-login"/><br>
      		<!--/// INSCRIPTION ///-->
      		<br><a href="/siteprojet/utilisateur" class="href-login">Nouvelle inscription</a>
		</form>
	</div>
		<!--/// FOOTER ///-->	
<%-- 	<%@include file="footer.jsp" %>	 --%>
		
</body>
</html>