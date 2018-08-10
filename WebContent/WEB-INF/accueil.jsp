<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<LINK href="/css/siteProjet.css" rel="stylesheet" type="text/css">
<title>Login</title>
</head>
	<%@include file="css.jsp" %>

<body class="body-login">

	<div align="center"> ${! empty erreur? erreur : ''}</div>
	
	<div class="div-form-login">
		<h1 class="h1-login">Connexion</h1>
		<form action="accueil" method="post"><br>	
<<<<<<< HEAD
		  <input type = "text" class="input-login" id="login" name="login" value="${login}" placeholder="E-mail" required/><br>		 
		  	<c:if test="${login==''}">	<b>-----------------Entrez votre login</b></c:if><br>		
		  	  
	      <input type = "password" class="input-login" id="psw" name="psw" value="${psw}" placeholder="Mot de passe" required/>  	      
		  	<c:if test="${psw==''}">	<b>-----------------Entrez votre mot de passe</b></c:if><br>
		  <br>  
<!-- 	  <br> Administrateur  :  -->
<!-- 	  <input type="checkbox" id="admin" name="admin" value="1"  />  Cliquez si admin -->
	<br>

 <!--Pour envoyer le formulaire -->
      <input type="submit" value="Se connecter" class="btn-login" /><br><br>
      <br><a href="/siteprojet/utilisateur" class="href-login">Nouvelle inscription</a>
  		 </form>
   </fieldset>
	<br><br><br><br><br><br><br><br><br><br>  
	<!-- footer -->	
=======
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
<footer>
>>>>>>> refs/remotes/origin/cynthia
	<%@include file="footer.jsp" %>	
<footer>
		
</body>
</html>