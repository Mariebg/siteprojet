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
	<%@include file="css.jsp" %>
<body>
	<%@include file="menuAd.jsp"%>
		<!--///// CREATION DU TITRE POUR LE QUIZZ /////-->
	<form action="quizz" method="post">	
		<input class="intitule" type="text" name="intitulQuizz" placeholder="Entrez un titre pour le quizz" required/>	
		<!--///// TABLEAU POUR CHOISIR COMPETENCES /////-->
		<fieldset>
			<legend>
				<h2>Choisissez une compétence</h2>
			</legend>
			<table border="1" cellpadding="10" cellspacing="1">
				<% 
					ArrayList<Competence> lstCompetences;
					lstCompetences = (ArrayList<Competence>) request.getAttribute("listeCompetences"); //cree un nouveau tableau usersAttente avec le contenu du tableau listeStgAttentes charge dans accueilControler
					session.setAttribute("listeCompetences",lstCompetences);						
//					System.out.println("taille" + lstCompetences.size());
					for (int i = 0; i < lstCompetences.size(); i++) {
				%>
				<tr>
					<td width="30%"align="center"><%out.println(lstCompetences.get(i).getSujet());%></td>
					<td width="60%"align="center"><%out.println(lstCompetences.get(i).getDescription());%></td>
					 <!-- ON DONNE L'ID DE LA VALEUR A VALEUR --> 
					<td align="center"><input type="radio" name="choix" value=<%= lstCompetences.get(i).getIdCompet()%> ></td>
 				</tr>
				<% } %>
			</table>
			<input class="sub-quizz" type="submit" name="valider" value="valider">
		</fieldset>
	</form>		
<!--/// FOOTER ///-->	
<footer>
	<%@include file="footer.jsp" %>	
<footer>
</body>
</html>