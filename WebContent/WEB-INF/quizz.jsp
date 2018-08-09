<%@page import="model.Competence"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quizz</title>
</head>
<body>
	<!-- menu au lieu de coder html sur chaque page, il est possible de le placer ds un jsp et de l'importer(include)  -->
	<%@include file="menu.jsp"%>

	<!-- /////////////////////////creation intitulé quizz /////////////////////////////// -->
	<fieldset>
		<legend>
			<h2>Intitulé du Quizz</h2>
		</legend>

		<form action="quizz" method="post">
			<input id="intitule" name="intitulQuizz" placeholder="Entrez un titre pour le quizz." required/>	
		</fieldset>
		
		<!-- ////////// TABLEAU des competences /////////// -->
		<fieldset>
			<legend>
				<h2>Liste des competences</h2>
			</legend>
			<table border="1" cellpadding="10" cellspacing="1">
				<% 
				ArrayList<Competence> lstCompetences;
				lstCompetences = (ArrayList<Competence>) request.getAttribute("listeCompetences"); //cree un nouveau tableau usersAttente avec le contenu du tableau listeStgAttentes charge dans accueilControler
				session.setAttribute("listeCompetences",lstCompetences);
				
//				System.out.println("taille" + lstCompetences.size());
				for (int i = 0; i < lstCompetences.size(); i++) {
				%>
				<tr>
					<td width="30%"align="center"><%out.println(lstCompetences.get(i).getSujet());%></td>
					<td width="60%"align="center"><%out.println(lstCompetences.get(i).getDescription());%></td>
					<td align="center"><input type="radio" name="choix" value=<%= lstCompetences.get(i).getIdCompet()%> ></td> <!--on donne la valeur de l'id à valeur  --> 
  				</tr>
				<% } %>
			</table>
			<input type="submit" name="valider" value="valider">
	</form>
		</fieldset>
		




</body>
</html>