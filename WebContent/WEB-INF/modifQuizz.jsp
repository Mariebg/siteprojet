<%@page import="model.Quizz"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modifier un quizz</title>
<%@include file="css.jsp" %>

</head>
<body>
<% boolean idRole=(boolean) session.getAttribute("idRole");
	if(!idRole) { %>
		<%@include file="menuStg.jsp" %>
	<% }else{ %>
		<%@include file="menuAd.jsp"%>
	<% } %>

	<form action="modifQuizz" method="post">	

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
			ArrayList<Quizz> lstQuizz;
			lstQuizz = (ArrayList<Quizz>) session.getAttribute("listeQuizz"); //cree un nouveau tableau usersAttente avec le contenu du tableau listeStgAttentes charge dans accueilControler
			if (lstQuizz!= null){
				session.setAttribute("listeQuizz",lstQuizz);						
//				System.out.println("taille" + lstCompetences.size());
				for (int i = 0; i < lstQuizz.size(); i++) {
			%>
			
			<tr>
<%-- 				<td width="15%"align="center"><%out.println(lstQuizz.get(i).getSujet());%></td> --%>
				<td width="55%"><%out.println(lstQuizz.get(i).getIntitulQuizz());%></td>
				 <!-- ON DONNE L'ID DE LA VALEUR A VALEUR --> 
				<td width="5%" align="center">
					<input type="radio" name="choix" value=<%= lstQuizz.get(i).getIdQuizz()%> >
				</td>
			</tr>
			<% }
				} %>
		</table>
		<input class="sub-quizz" type="submit" name="valider" value="valider">
	</div>	
</form>		
	

</body>
</html>