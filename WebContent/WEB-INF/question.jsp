<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questionnaire</title>
</head>
<body>
	<%@include file="menu.jsp"%>

	<!-- menu au lieu de coder html sur chaque page, il est possible de le placer ds un jsp et de l'importer(include)  -->
	<%@include file="menuAd.jsp"%>

	<!-- /////////////////////////creation question /////////////////////////////// -->
	<fieldset>
		<legend>
			<h2>Nouvelle Question</h2>
		</legend>

		<form action="question" method="post">
			<input id="question" name= question value ="${question}" placeholder="Entrez votre question." required>
	</fieldset> 
		<!-- /////////////////////////creation reponse /////////////////////////////// -->
		<fieldset>
			<legend>
				<h2>Entrez les réponses sans oublier de cocher la reponse correcte</h2>
			</legend>
 				<input type="text" id="reponse" name="reponse1" value ="${reponse1}" placeholder="Entrez une réponse." />		
				<input type="radio" name="repCorrect" value="1"/> (Cochez SI bonne réponse)<br>
				
				<input type="text" id="reponse" name="reponse2" value ="${reponse2}" placeholder="Entrez une réponse." />		
				<input type="radio" name="repCorrect" value="2"/> (Cochez SI bonne réponse)<br>
				
				<input type="text" id="reponse" name="reponse3" value ="${reponse3}" placeholder="Entrez une réponse." />		
				<input type="radio" name="repCorrect" value="3"/> (Cochez SI bonne réponse)<br>
				
				<input type="text" id="reponse" name="reponse4" value ="${reponse4}" placeholder="Entrez une réponse." />		
				<input type="radio" name="repCorrect" value="4"/> (Cochez SI bonne réponse)<br>
				
				<input type="text" id="reponse" name="reponse5" value ="${reponse5}" placeholder="Entrez une réponse." />		
				<input type="radio" name="repCorrect" value="5"/> (Cochez SI bonne réponse)
<!--				
				<input type="text" name="idQuizz" value="<%=request.getAttribute("idQuizz") %>"/><br>
 -->
				<br> <input type="submit" name="Inserer" value="valider">
	<br><br>
	<div><h2> ${! empty erreur? erreur : ''}</h2></div>
	<br><br><br>
	
				
  			</form>

</body>
</html>