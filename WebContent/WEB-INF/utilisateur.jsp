
<%@page import="model.Utilisateur"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>S'inscrire</title>
<meta charset="utf-8">    
</head>
<%@include file="css.jsp" %>

<body >
	<div class="img"></div>
		<div class="container">
		<!-- <div align="center">${!empty nbErreur? nbErreur:'' }</div> -->
		<div class="div-form-inscription">
			<h1 class="h1-inscription">Inscription</h1>
	   		<form action="utilisateur" method="post">
		      	<input type = "text" id="nom" name="nom" value="${nom}" placeholder="Nom" required/><br>
		      	<br><input type="text" id="prenom" name="prenom"value="${prenom}" placeholder="Prénom" required/><br>
		      	<br><input type="text" id="mail" name="mail"value="${mail}" placeholder="E-mail" required/><br>
		     	<br><input type="password" id="psw" name="psw"value="${psw}" placeholder="Mot de passe" required/><br>	 
		      	<br><input type="text" id="tel" name="tel"value="${tel}" placeholder="Téléphone" required/><br>	
		      	<br><input type="text" id="ste" name="ste"value="${ste}" placeholder="Société" required/><br>	
		      	<br><input type="text" id="date" name="dateCreation" value="${dateCreation}" placeholder="Date de création" required/><br>		
		      	<br>
	      	<!--/// AFFICHE LES ERREURS SUR L'UN DES CHAMPS ///-->
	      	<!-- /// PASSE DANS LE CONTROLEUR ///-->
	      		<div>${!empty erreur? erreur:'' }</div><br>   
		       	<br>
		      	<br>
		      	<br>
				<!--/// ENVOYER LE FORMULAIRE ///-->
         		<input type="submit" value="S'inscrire" />
				<!--/// RESET LE FORMULAIRE ///	-->
        		 <input type="reset" value="Annulez" />
        		 
        		<div class="dejaInscrit">
					<br><a href="/siteprojet/accueil" class="dejaInscrit">Déjà inscrit ? Se connecter </a>
				</div>
	   		</form>
		 </div>

		</div>
		</div>

</body>
</html>