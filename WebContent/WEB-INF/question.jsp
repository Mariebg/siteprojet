<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Création d'un questionnaire</title>
</head>
	<%@include file="css.jsp" %>
	
<body style="margin: 0; padding: 0;">
	<%@include file="menuAd.jsp"%>
	<!--///// CREATION D'UNE QUESTION -->
	<form action="question" method="post">
		<input class="intitule" id="question" name= question value ="${question}" placeholder="       Entrez votre question" required>
		<!--///// CREATION DES RÉPONSES /////-->
		<fieldset class="fieldset-quest">
			<legend>
				<h2>Entrez les réponses sans oublier de cocher la bonne réponse</h2>
			</legend>
				<div class="div-tab-quest">
				<table class="tab-quest">
 					<tr> <!--  TR = ligne -->
 						<!-- Colonnes -->
 						<th class="rep-th"><input class="rep" type="text" id="reponse" name="reponse1" value ="${reponse1}" placeholder="Entrez une réponse" /></th>
						<td class="rep-td"><input type="radio" name="repCorrect" value="1"/> (Cochez SI bonne réponse) </td>
					</tr>
 					<tr>
	 					<th class="rep-th"><input class="rep" type="text" id="reponse" name="reponse2" value ="${reponse2}" placeholder="Entrez une réponse" /></th>
						<td class="rep-td"><input type="radio" name="repCorrect" value="2"/> (Cochez SI bonne réponse)</td>
					</tr>
 					<tr>
	 					<th class="rep-th"><input class="rep" type="text" id="reponse" name="reponse3" value ="${reponse3}" placeholder="Entrez une réponse" /></th>
						<td class="rep-td"><input type="radio" name="repCorrect" value="3"/> (Cochez SI bonne réponse)</td>
					</tr>
 					<tr>
	 					<th class="rep-th"><input class="rep"type="text" id="reponse" name="reponse4" value ="${reponse4}" placeholder="Entrez une réponse" /></th>
						<td class="rep-td"><input type="radio" name="repCorrect" value="4"/> (Cochez SI bonne réponse)</td>
					</tr>
 					<tr>
	 					<th class="rep-th"><input class="rep" type="text" id="reponse" name="reponse5" value ="${reponse5}" placeholder="Entrez une réponse" /></th> 					 									
						<td class="rep-td"><input type="radio" name="repCorrect" value="5"/> (Cochez SI bonne réponse)</td>
					</tr>				
				</table>
<!--			<input type="text" name="idQuizz" value="<%=request.getAttribute("idQuizz") %>"/><br>-->
				<br> 
				<input class="submit-quest" type="submit" name="Inserer" value="valider"> 
			</div>
			<br><br>
			<div><h2> ${! empty erreur? erreur : ''}</h2></div>
			<br><br><br>	
	</form>
</body>
</html>