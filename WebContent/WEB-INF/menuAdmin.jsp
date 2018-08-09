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
<body>
	<style>
	#btn {
		margin-left: 95%;
	}
	</style>
	<!-- menu au lieu de coder html sur chaque page, il est possible de le placer ds un jsp et de l'importer(include)  -->
	<%@include file="menuAd.jsp"%>


	<br>

	<br>
	<br>
	<h1>Gestion Administrateur</h1>
	<br>
	<br>
	<div align="center">${! empty erreur? erreur : ''}</div>
	<br>
	<br>
	<div class="list_stg">
	<!-- ////////// TABLEAU USERS EN ATTENTE /////////// -->
		<fieldset>
			<legend>
				<h2>Utilisateur(s) en attente(s)</h2>
			</legend>
			<table border="1" cellpadding="10" cellspacing="1">
				<tr>
					<th width="25%">Nom</th>
					<th width="5%">Date d'inscription</th>
					<th width="5%">Téléphone</th>
					<th width="20%">Société</th>
					<th width="20%">Mail</th>
					<th width="5%">Validation</th>
				</tr>
	<form action="menuAdmin" methode= "get"> <!-- formulaire qui sert à valider les checkbox -->
				<% 
				ArrayList<Utilisateur> usersAttente;
				usersAttente = (ArrayList<Utilisateur>) request.getAttribute("listeStgAttentes"); //cree un nouveau tableau usersAttente avec le contenu du tableau listeStgAttentes charge dans accueilControler
				session.setAttribute("listeStgAttentes",usersAttente);
				
				System.out.println("taille" + usersAttente.size());
				for (int i = 0; i < usersAttente.size(); i++) {
				%>
				<tr>
					<td><%out.println(usersAttente.get(i).getNom());%></td>
					<td align="center"><%out.println(usersAttente.get(i).getDateCreation());%></td>
					<td align="center"><%out.println(usersAttente.get(i).getTel());%></td>
					<td><%out.println(usersAttente.get(i).getSte());%></td>
					<td><% out.println(usersAttente.get(i).getMail());%></td>
					
					<td align="center"><input type="checkbox" name="<%= usersAttente.get(i).getId()%>" ></td> <!--on donne la valeur de l'id à name  --> 
  				</tr>
				<% } %>
			</table>
			<input type="submit" name="valider" value="valider">
	</form>
		</fieldset>

		<!-- ////////// TABLEAU USERS VALIDÉS /////////// -->
		<fieldset>
			<legend>
				<h2>Utilisateur(s) valide(s)</h2>
			</legend>
			<table border="1" cellpadding="10" cellspacing="1">
				<tr>
					<th width="25%">Nom</th>
					<th width="5%">Date d'inscription</th>
					<th width="5%">Téléphone</th>
					<th width="20%">Société</th>
					<th width="20%">Mail</th>
				</tr>

				<% 
//					ArrayList<Utilisateur> users=UserBDD.listeAttenteStagiaire(false);
					ArrayList<Utilisateur> userValides;
					userValides = (ArrayList<Utilisateur>) request.getAttribute("listeStgValides");
					
					System.out.println("taille" + userValides.size());
					for (int i = 0; i < userValides.size(); i++) {
				%>
				<tr>
					<td><%out.println(userValides.get(i).getNom());%></td>
					<td align="center"><%out.println(userValides.get(i).getDateCreation());%></td>
					<td align="center"><%out.println(userValides.get(i).getTel());%></td>
					<td><%out.println(userValides.get(i).getSte());%></td>
					<td><% out.println(userValides.get(i).getMail());%></td>
				</tr>
				<% } %>
			</table>
		</fieldset>
		
		
	</div>


</body>
</html>