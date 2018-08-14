<%@page import="model.Utilisateur"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mysql.fabric.xmlrpc.base.Array"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gestion Administrateur</title>
</head>
	<%@include file="css.jsp" %>

<body>
	<%@include file="menuAd.jsp"%>
<!-- 	<h1 class="h1-admin">Gestion utilisateurs</h1> -->
	<br>
	<br>
	<div align="center">${! empty erreur? erreur : ''}</div>
	<br>
	<br>
	<!-- ////////// TABLEAU USERS EN ATTENTE /////////// -->
		<fieldset>
			<legend>
				<h2>Utilisateur(s) en attente(s)</h2>
			</legend>
			<table border="1" cellpadding="10" cellspacing="1">
			<thead>
				<tr>
					<th width="25%">Nom</th>
					<th width="25%">Prénom</th>
					<th width="5%">Téléphone</th>
					<th width="20%">Mail</th>
					<th width="20%">Société</th>
					<th width="10%">Date d'inscription</th>
					<th width="5%">Validation</th>
				</tr>
			</thead>	
		<form action="menuAdmin" methode= "get"> 
			<% 
				ArrayList<Utilisateur> usersAttente;
				 //cree un nouveau tableau usersAttente avec le contenu du tableau listeStgAttentes charge dans accueilControler
				usersAttente = (ArrayList<Utilisateur>) request.getAttribute("listeStgAttentes");
				session.setAttribute("listeStgAttentes",usersAttente);
				
				System.out.println("taille" + usersAttente.size());
				for (int i = 0; i < usersAttente.size(); i++) {
			%>
			<tr>
				<td><%out.println(usersAttente.get(i).getNom());%></td>
				<td><%out.println(usersAttente.get(i).getPrenom());%></td>
				<td align="center"><%out.println(usersAttente.get(i).getTel());%></td>
				<td><% out.println(usersAttente.get(i).getMail());%></td>
				<td><%out.println(usersAttente.get(i).getSte());%></td>
				<td align="center"><%out.println(usersAttente.get(i).getDateCreation());%></td>	
							
				<td align="center"><input type="checkbox" name="<%= usersAttente.get(i).getId()%>" ></td> <!--on donne la valeur de l'id à name  --> 
			</tr>
			<% } %>
			</table>
			
			<input class="submit-tab" type="submit" name="valider" value="valider">
		</form>	
	</fieldset>
		<!-- ////////// TABLEAU USERS VALIDÉS /////////// -->
		<fieldset class="fieldset-tab">
			<legend class="legend-tab">
				<h2>Utilisateur(s) validé(s)</h2>
			</legend>
			<table border="1" cellpadding="10" cellspacing="1">
				<tr>
					<th width="25%">Nom</th>
					<th width="25%">Prénom</th>
					<th width="5%">Téléphone</th>
					<th width="20%">Mail</th>
					<th width="20%">Société</th>
					<th width="10%">Date d'inscription</th>
					<th width="5%">Suppression</th>
				</tr>
				
				<form action="menuAdmin" methode= "get"> 

			<% 
//				ArrayList<Utilisateur> users=UserBDD.listeAttenteStagiaire(false);
				ArrayList<Utilisateur> userValides;
				userValides = (ArrayList<Utilisateur>) request.getAttribute("listeStgValides");	
				
				System.out.println("taille" + userValides.size());
				for (int i = 0; i < userValides.size(); i++) {
			%>
				<tr>
					<td><%out.println(userValides.get(i).getNom());%></td>
					<td><%out.println(usersAttente.get(i).getPrenom());%></td>
					<td align="center"><%out.println(userValides.get(i).getTel());%></td>
					<td><% out.println(userValides.get(i).getMail());%></td>
					<td><%out.println(userValides.get(i).getSte());%></td>
					<td align="center"><%out.println(userValides.get(i).getDateCreation());%></td>
					
					<td align="center"><input class="checkbox" type="checkbox" name="<%= usersAttente.get(i).getId()%>" ></td>
				</tr>
				<% } %>
			</table>
			
			<input class="submit-supp-admin" type="submit" name="supprimer" value="supprimer">
			</form>
		</fieldset>
</body>
</html>