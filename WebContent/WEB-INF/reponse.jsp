<%@page import="bdd.DbManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Question"%>
<%@page import="model.Reponse"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>questionnaire à remplir</title>
</head>
<body>
<%@include file="menu.jsp"%> 

		<!-- ////////// LISTE DES QUESTIONS REPONSES /////////// -->
	<%
	DbManager db = new DbManager();
	ArrayList<Question> listeQuestion = null;
	ArrayList<Reponse> listeReponse = null;
	
	System.out.println("avant l'affichage des questions-reponses");
	%>
	<fieldset>
		<legend>
			<%String intitulQuizz = (String)request.getAttribute("intitulQuizz");%>
			<h2><c:out value="${intitulQuizz}"></c:out></h2>
		</legend>
		<form action="reponse" method="post">

			<%
			Integer idQuizz = (Integer)request.getAttribute("idQuizz");%>
			<c:set var="idQuizz" value="${idQuizz}"/>
			<input type="hidden" name="idQuizz" value= ${idQuizz}>
			<%
			//cree un tableau avec les questions du quizz
			listeQuestion = (ArrayList<Question>) db.listerQuestion(idQuizz); 
			pageContext.setAttribute("listeQuestion", listeQuestion);
			
			//cree un tableau avec les questions du quizz
			listeReponse = (ArrayList<Reponse>) db.listerReponse(listeQuestion); //cree un tableau avec les questions du quizz
			pageContext.setAttribute("listeReponse", listeReponse);
			%>
			<c:set var="numChoix" value="${0}"/>
			<c:set var="numQuestion" value="${0}"/>
			
			<c:forEach items="${listeQuestion}" var="question">
			
			 	<c:set var="numQuestion" value="${numQuestion+1}"/>
				<input type="hidden" name="question${numQuestion}" value= "${question.getIdQuest()}">
				
				<c:out value="${question.getQuestion()}"></c:out><br> <!-- affiche la question  --> 

			 	<c:set var="numChoix" value="${numChoix+1}"/>
			 	
				<c:forEach items="${listeReponse}" var="reponse"> 
			 		<c:if test="${reponse.getIdQuest()==question.getIdQuest()}">
						<c:out value="${reponse.getTextRep()}"></c:out>
						<input type="radio" name="repDonne${numChoix}" value="${reponse.idRep}"><br>
						
						<%System.out.println("valeur de name : " + "${repDonne}"); %>
					</c:if>
 				</c:forEach>
 			</c:forEach>
			
			<input type="hidden" name="nbQuestion" value= "${numChoix}">
			<input type="submit" name="valider" value="valider">
			
			
		</form>
		<br>
	<div align="center"> ${! empty erreur? erreur : ''}</div>
	<br>
	</fieldset>

	
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>