<%@page import="bdd.DbManager"%>
<%@page import="model.Competence"%>
<%@page import="model.Quizz"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@include file="css.jsp" %>


<title>Parcours</title>
</head>
<body style="margin: 0; padding: 0;">
<%@include file="menuAd.jsp"%>
	<!-- ////////// TABLEAU USERS EN ATTENTE /////////// -->
<!-- 	<fieldset> -->
<!-- 		<legend> -->
<!-- 			<h2>Liste des sujets</h2> -->
<!-- 		</legend> -->
		<%
		    int idUser;
			if (session.getAttribute("id")!=null){
				  idUser = (int)session.getAttribute("id");
			}
			ArrayList<Competence> listeCompetences;
			if ((listeCompetences = (ArrayList<Competence>) request.getAttribute("listCompetence"))!=null){
				session.setAttribute("listCompetence", listeCompetences);
			}
			else {listeCompetences=(new DbManager()).listerCompetence();}
			
			System.out.println("taille" + listeCompetences.size());
		%>
		<FORM action="parcours" method="get">

			<SELECT class="select-parcours" name="choix" size="1" width="60">
				
				<option value="-">--CHOISISSEZ UN SUJET--</option>
				<%
					for (int i = 0; i < listeCompetences.size(); i++) {
				%>

				<OPTION	value=<%out.println(listeCompetences.get(i).getIdCompet());%>>
					<%out.println(listeCompetences.get(i).getSujet());%>
				</OPTION>
				<%}%>

			</SELECT> <input class="sub-parcours-sujet" type="submit" name="valider" value="valider">
		</FORM>
<!-- 	</fieldset> -->




	<!-- ////////// LISTE DES QUIZZ /////////// -->
	<%
	DbManager db = new DbManager();
	ArrayList<Quizz> listeQuizz = null;
	
	System.out.println("avant le formulaire liste des quizz");

	if (request.getAttribute("idCompet") != null) {%>
	<fieldset>
		<legend>
			<h2>Listes des questionnaires</h2>
		</legend>
		<table border="1" cellpadding="10" cellspacing="1">
			<tr>
				<th width="15%">Intitulé</th>
				<th width="12%">Choix</th>
			</tr>
		<form action="parcours" method="post">
			<%Integer idCompet = (Integer)request.getAttribute("idCompet");

			listeQuizz = (ArrayList<Quizz>) db.listerQuizz(idCompet); //cree un nouveau tableau usersAttente avec le contenu du tableau listeStgAttentes charge dans accueilControler
			
			pageContext.setAttribute("listeQuizz", listeQuizz);
			//session.setAttribute("listeQuizz", listeQuizz);
			System.out.println("taille" + listeQuizz.size());
	}%>
				<c:forEach items="${listeQuizz}" var="quizz">
					<tr>
						<td width="15%"><c:out value="${quizz.intitulQuizz}"></c:out></td>
						<!--on donne la valeur de l'id à name  -->
						<td width="12%" align="center"><input type="radio" name="choix" value="${quizz.idQuizz}">
						<input type="hidden" name="intitulQuizz" value="${quizz.intitulQuizz}"></td>
					</tr>
				</c:forEach>
				<input class="sub-parcours-intituleQuizz" type="submit" name="valider" value="valider">
		</table>
	</fieldset>
			</form>

</body>
</html>