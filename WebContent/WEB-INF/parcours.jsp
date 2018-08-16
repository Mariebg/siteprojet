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
<%@include file="css.jsp"%>

<title>Parcours</title>
</head>
<body style="margin: 0; padding: 0;">
	<% boolean idRole=(boolean) session.getAttribute("idRole");
	if(!idRole) { %>
		<%@include file="menuStg.jsp" %>
	<% }else{ %>
		<%@include file="menuAd.jsp"%>
	<% } %>
	<!-- ////////// liste de competences /////////// -->
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
			
			System.out.println("Nb de competences : " + listeCompetences.size());
		%>
		<FORM action="parcours" method="get">
			<select class="select-parcours" name="choix" size="1" width="60">
				<option value="-">--CHOISISSEZ UN SUJET--</option>
					<%for (int i = 0; i < listeCompetences.size(); i++) {%>
				<option	value=<%out.println(listeCompetences.get(i).getIdCompet());%>>
					<%out.println(listeCompetences.get(i).getSujet());%></option><%}%>
			<input class="sub-parcours-sujet"  type="submit" name="valider" value="valider">
			</select> 
		</FORM>
		
	<div align="center"><br> ${! empty erreur? erreur : ''}</div>
	<div align="center"> ${! empty phraseResultat? phraseResultat : ''}</div>
	<!-- ////////// LISTE DES QUIZZ /////////// -->
	<%
	DbManager db = new DbManager();
	ArrayList<Quizz> listeQuizz = null;
	
	System.out.println("avant le formulaire liste des quizz");
	System.out.println("id de la competence choisie : "+ request.getAttribute("idCompet"));

	if (request.getAttribute("idCompet") != null) {%>
	<fieldset>
		<legend>
			<h2>Listes des questionnaires.</h2>
		</legend>
		<div class="div-tab-parcours">
		<table border="1" cellpadding="10" cellspacing="1">
			<tr>
				<th width="5%">Intitulé</th> 
				<th width="1%">Choix</th>
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
						<td><c:out value="${quizz.intitulQuizz}"></c:out></td>
						<!--on donne la valeur de l'id à name  -->
						<td align="center"><input type="radio" name="choix" value="${quizz.idQuizz}">
						<input type="hidden" name="intitulQuizz" value="${quizz.intitulQuizz}"></td>
					</tr>
				<input class="sub-parcours-intituleQuizz" type="submit" name="valider" value="valider">
				</c:forEach>
			</form>
		</table>
		</div>
	</fieldset>
</body>
</html>