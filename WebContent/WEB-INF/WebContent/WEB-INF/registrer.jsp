<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inscription</title>
</head>
<body>
		<h1 align="center">Inscription</h1>
		<div align="center"> ${! empty erreur? erreur : ''}</div>
		<form action="inscription" method="post">
			<input type="text" name="nom" value=${nom} placeholder="Nom">  
				<c:if test="${nom==''}"> // le champ "Nom" n'a pas été renseigné </c:if> 
		<!-- /////////////////////////////////////////////////////////////////////////////////////// -->				
			<br><input type="text" name="statut" value=${statut} placeholder="Statut"> 
				<c:if test="${statut==''}"> // le champ "Statut" n'a pas été renseigné </c:if>
		<!-- ////////////////////////////////////////////////////////////////////////////////////// -->						
			<br><input type="text"  name="societe" value=${societe} placeholder="Societé"> 
				<c:if test="${prenom==''}"> // le champ "Prénom"n'a pas été renseigné </c:if> 
		<!-- ///////////////////////////////////////////////////////////////////////////////////// -->						
			<br><input type="text" name="dateNai" value=${dateNai} placeholder="Date de naissance"> 
				<c:if test="${dateNai==''}"> // le champ "Date de naissance" n'a pas été renseigné </c:if> 
		<!-- //////////////////////////////////////////////////////////////////////////////////// -->									
			<br><input type="email" name="mail" value=${mail} placeholder="Adresse e-mail"> 
				<c:if test="${mail==''}"> // le champ "E-mail" n'a pas été renseigné </c:if>
		<!-- /////////////////////////////////////////////////////////////////////////////////// -->									
			<br><input type="password" name="mdp" value=${mdp} placeholder="Mot de passe"> 
				<c:if test="${mdp==''}"> // le champ "Mot de passe" n'a pas été renseigné </c:if> 
		</form>
		
</body>
</html>