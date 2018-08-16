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
<%@include file="css.jsp"%>
<body>
<% boolean idRole=(boolean) session.getAttribute("idRole");
	if(!idRole) { %>
		<%@include file="menuStg.jsp" %>
	<% }else{ %>
		<%@include file="menuAd.jsp"%>
	<% } %>
		<!--///// CREATION DU TITRE POUR LE QUIZZ /////-->
	<form action="quizz" method="post">	
		<input class="intitule" type="text" name="intitulQuizz" placeholder="Entrez un titre pour le quizz" required/>	
		<!--///// TABLEAU POUR CHOISIR COMPETENCES /////-->
		<fieldset>
			<legend>
				<h2>Choisissez une compétence</h2>
			</legend>
		<div class="div-tab-quizz">
			<table border="1" cellpadding="10" cellspacing="1">
				<tr>
					<th>Sujet</th>
					<th>Description</th>
					<th>Choix</th>
				</tr>
			<% 
				ArrayList<Competence> lstCompetences;
				lstCompetences = (ArrayList<Competence>) session.getAttribute("listeCompetences"); //cree un nouveau tableau usersAttente avec le contenu du tableau listeStgAttentes charge dans accueilControler
			if (lstCompetences!= null){
				session.setAttribute("listeCompetences",lstCompetences);						
//				System.out.println("taille" + lstCompetences.size());
				for (int i = 0; i < lstCompetences.size(); i++) {
			%>
			
			<tr>
				<td width="15%"align="center"><%out.println(lstCompetences.get(i).getSujet());%></td>
				<td width="55%"><%out.println(lstCompetences.get(i).getDescription());%></td>
				 <!-- ON DONNE L'ID DE LA VALEUR A VALEUR --> 
				<td width="5%" align="center">
					<input type="radio" name="choix" value=<%= lstCompetences.get(i).getIdCompet()%> >
				</td>
			</tr>
			<% }
				} %>
		</table>
		<input class="sub-quizz" type="submit" name="valider" value="valider">
	</div>	
	</fieldset>
</form>		
</body>
</html>


