<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%@page import="bdd.DbManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Parcours"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil Stagiaire</title>
<script type="text/javascript">
	function afficheParcours(afficheParcours){
		divInfo = document.getElementById('divacacher');		 
			if (divInfo.style.display == 'none')
				divInfo.style.display = 'block';
			else
				divInfo.style.display = 'none';
	}	

	function affichemsg(){
		alert("je fais l'action demandee");
	}	

	function openLink(url){
		document.location.href = "/siteprojet/parcours";
	return true;
	}
</script>

</head>
	<%@include file="css.jsp" %>
<body style="margin: 0; padding: 0;">
	<% boolean idRole=(boolean) session.getAttribute("idRole");
		if(!idRole) { %>
			 <%@include file="menuStg.jsp" %>
		 	
		<% }else{ %>
			<%@include file="menuAd.jsp"%>
		<% } %>
	<br>
    <br><input type="button" class="btn-result-parcours" value="Résultats des parcours" onclick='afficheParcours()'  />
		<input type="button" class="btn-nouveau-parcours" value="Nouveau Parcours" onclick='openLink()'/>
    <div id="divacacher" style="display:none;">
    	<%
	//	HttpSession session = request.getSession();
		boolean passage=false;
		int idUser=(int) session.getAttribute("idUser"); //recuperer par la session creee
		DbManager db=new DbManager();
		
		ArrayList<Parcours> listeParcours = (ArrayList<Parcours>) db.listerParcours(idUser); //cree un nouveau tableau avec les parcours d'un utilisateur
		pageContext.setAttribute("listeParcours", listeParcours);
		//session.setAttribute("listeQuizz", listeQuizz);
		System.out.println("taille" + listeParcours.size());
		%>
		<table border="1" cellpadding="10" cellspacing="1">
		<thead>
			<tr>
				<th width="87%">Intitulé</th>
				<th width="90%">Score</th>
			</tr>
		</thead>
			<c:forEach items="${listeParcours}" var="parcours">
		<tbody>
			<td><c:out value="${parcours.intituleQuizz}"></c:out></td>
			<td align="center"><c:out value="${parcours.score}"></c:out></td>
		</tbody>
			</c:forEach>
		</table>	
    </div>
</body>
</html> 