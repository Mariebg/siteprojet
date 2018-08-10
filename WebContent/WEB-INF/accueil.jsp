<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<LINK href="/css/siteProjet.css" rel="stylesheet" type="text/css">
<title>Login</title>
</head>
<body>

<style>
.btn-login {
	color:#343434;
    height: 30px;
    margin-left: 117px;
    font-family: sans-serif;
    font-size: 16px;
    background-color: #F7AC18;
    color: white;
    border-radius: 8px;
    border: none;
    box-shadow: 1px 5px 10px 0px #696767;
}

.fieldset-login {
	height: 319px;
    border-radius: 10px;
    width: 23%;
    margin: auto;
    box-shadow: 0px 6px 16px 0px #888383;
    border: none;
}


.legend-login {
	color: gray;
    font-size: 29px;
    text-align: center;
    font-family: sans-serif;
}

.input-login {
	border-top: none;
    border-bottom: solid #dedede 2px;
    border-right: none;
    border-left: none;
    margin-left: 25%;
    margin-top: 30px;
    font-size: 18px;
    font-style: italic;
    font-family: sans-serif;
}

.href-login {
	text-decoration: none;
	 font-family: sans-serif;
	 font-size: 14px;
}

</style>
	<br>
	
	<!-- menu au lieu de coder html sur chaque page, il est possible de le placer ds un jsp et de l'importer(include)  -->
	<%@include file="menu.jsp" %>
	<br><br><br><br><br>
<!-- 	<h1>ACCUEIL PROJET</h1> -->
	<br><br>
	<div align="center"> ${! empty erreur? erreur : ''}</div>
	<br><br><br>
	
	<fieldset class="fieldset-login">
		<legend class="legend-login">Connexion</legend>
		<form action="accueil" method="post"><br>	
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
	<%@include file="footer.jsp" %>	
	
	
</body>
</html> 