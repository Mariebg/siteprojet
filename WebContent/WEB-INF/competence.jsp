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
	
<!-- /////////////////////////creation competence /////////////////////////////// -->
	<form action="competence" method="post">  
		<input class="intitule" type="text" id="sujet" name="sujet"  placeholder="Entrez la nouvelle competence"/>
		<!--/// CHAMP TEXTAREA POUR DESCRIPTION ///-->
		<textarea cols="34" input id="desription" name="description" placeholder="Description"></textarea>
		<br>
		<input class="sub-compet" type="submit" name="Inserer" value="valider">
	</form>
				
<!--///// TABLEAU DES COMPETÉNCES /////-->
<fieldset>
	<legend>
		<h2>Compétences</h2>
	</legend>
	<div class="div-tab-compet" style="margin-top: 1%;">
	<table border="1" cellpadding="10" cellspacing="1">
		<tr>
			<th width="1%">Identifiant</th>
			<th width="10%">Sujet</th>
			<th width="20%">Description</th>
			<th width="5%">Gérer</th>
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
			<td align="center"><input type="checkbox"></td>
		</tr>
		<%}%>
	</table>
	<input class="submit-modifier-compet" type="submit" name="modifier" value="modifier">
	<input class="submit-supp-compet" type="submit" name="supprimer" value="supprimer">
	</div>
</fieldset>		

<!--/// FOOTER ///-->	
<footer>
	<%@include file="footer.jsp" %>	
<footer>
</body>
</html>