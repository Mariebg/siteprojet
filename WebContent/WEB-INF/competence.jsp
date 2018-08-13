<%@page import="model.Competence"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compétences</title>
</head>
	<%@include file="css.jsp" %>

<body>
	<%@include file="menuAd.jsp"%>
	
		<form action="competence" method="post">  
			<input class="intitule" type="text" id="sujet" name="sujet"  placeholder="Sujet de la nouvelle compétence"/>
			<!--/// CHAMP TEXTAREA POUR DESCRIPTION ///-->
			<textarea cols="45" input id="desription" name="description" placeholder="Description"></textarea>
			<br>

		</form>
					<input class="sub-compet" type="submit" name="Inserer" value="valider">
	
		<!--/// BOUTON POUR SORTIR ///-->	
<!-- 		<form action="quizz" method="get">  -->
<!-- 			<input type="submit" name="sortir" value="Sortir">  -->
<!-- 		</form> -->

	<!--///// TABLEAU DES COMPETÉNCES /////-->
	<fieldset>
		<legend>
			<h2>Compétences</h2>
		</legend>
		<table border="1" cellpadding="10" cellspacing="1">
			<tr>
				<th width="0%">Identifiant</th>
				<th width="30%">Sujet</th>
				<th width="70%">Description</th>
			</tr>
				<%    
	 			ArrayList<Competence> listCompet;
	 			listCompet = (ArrayList<Competence>) request.getAttribute("listeCompetence");
				for (int i = 0; i < listCompet.size(); i++) {
			%>
			<tr>
				<td align="center"><%out.println(listCompet.get(i).getIdCompet());%></td>
				<td><%out.println(listCompet.get(i).getSujet());%></td>
				<td><%out.println(listCompet.get(i).getDescription());%></td>
			</tr>
			<%}%>
		</table>
	</fieldset>

<!-- /////////////////////////creation competence /////////////////////////////// -->
	<fieldset>
			<legend>
			<h2>Nouvelle Compétence</h2> 
		</legend>
	
	<form action="competence" method="post">  
		<input type = "text" id="sujet" name="sujet"  placeholder="Sujet"/>
		<textarea input id="desription" name="description" placeholder="Description"></textarea>
		<br>
		<input type="submit" name="Inserer" value="valider">
	</form>
	

<!-- 	<form action="quizz" method="get">  -->
<!-- 	<input type="submit" name="sortir" value="Sortir">  -->
<!-- 	</form> -->


<!--/// FOOTER ///-->	
<footer>
	<%@include file="footer.jsp" %>	
<footer>
</body>
</html>