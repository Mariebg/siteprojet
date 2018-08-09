
<%@page import="model.Utilisateur"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>Formulaire d'inscription</title>
    <meta charset="utf-8">     <!-- pour encodage     -->
	<script src= "script2.js"></script>   <!--  est utilise pour importer des fichiers javascript -->
</head>
<body >
	<!-- menu -->	 
	<%@include file="menu.jsp" %>
<!-- <div align="center">${!empty nbErreur? nbErreur:'' }</div> -->

   <form action="utilisateur" method="post">
   		<h1 align="center" id="titre">Formulaire d'inscription</h1>


      	<input type = "text" id="nom" name="nom" value="${nom}" /> Votre nom  <br>
      	<input type = "text" id="mail" name="mail"value="${mail}"/> Votre mail <br>
      	<input type = "text" id="psw" name="psw"value="${psw}"/> Votre mot de passe <br>
      	<input type = "text" id="tel" name="tel"value="${tel}"/> Votre telephone <br>
      	<input type = "text" id="ste" name="ste"value="${ste}"/> Votre societe <br>
      	<input type = "text" id="date" name="dateCreation" value="${dateCreation}"/> Date inscription <br>
	
      	<br>
      	<!-- affichage msg si erreur sur 1 des champs -->
      	<div>${!empty erreur? erreur:'' }</div><br>   <!-- passe par le controleur-->
       	<br>

      <br><br>
<!--Pour envoyer le formulaire -->
         <input type="submit" value="Validez" />
<!--Pour réinitailiser le formulaire -->
         <input type="reset" value="Annulez" />

   </form>
   
  <!-- footer -->
  <%@include file="footer.jsp" %>	

</body>
</html>