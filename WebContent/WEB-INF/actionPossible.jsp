<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="bdd.DbManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Parcours"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ActionPossible</title>

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
</script>
</head>
<body>
<style>
.btn-login {
	color:#343434;
    height: 100px;
    margin-left: 140px;
    font-family: sans-serif;
    font-size: 16px;
    background-color: #F7AC18;
    color: white;
    border-radius: 8px;
    border: none;
    box-shadow: 1px 5px 10px 0px #696767;
}


.legend-login {
	color: gray;
    font-size: 29px;
    text-align: center;
    font-family: sans-serif;
}

.input-login {
	border-top: none;
    border-bottom: solid #dedede 2px;
    border-right: none;
    border-left: none;
    margin-left: 25%;
    margin-top: 30px;
    font-size: 18px;
    font-style: italic;
    font-family: sans-serif;
}

.href-login {
	text-decoration: none;
	 font-family: sans-serif;
	 font-size: 14px;
}

</style>

	<%@include file="menu.jsp" %>
	
	<br><br><br><br><br>
	
    <br><input type="button" class="btn-login" class="href-login" placeholder="Resultat des parcours" onclick='afficheParcours()'  />Resultat des parcours
    
<!-- 
    <br><a class="btn-login" href="#" onclick='affichemsg()' class="href-login">Resultat des parcours</a>
    <br><a class="btn-login" href="/siteprojet/resultatParcours" class="href-login">Resultat des parcours</a>
 -->
 
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
		<table>
			<c:forEach items="${listeParcours}" var="parcours">
			<tr>
				<td><c:out value="${parcours.intituleQuizz}"></c:out></td>
				<td>     Score  <c:out value="${parcours.score}"></c:out></td>
			</tr>
			</c:forEach>
		</table>	
    </div>
	<br><br><br><br><br>
	
      <br><a class="btn-login" href="/siteprojet/parcours" class="href-login">Nouveau Parcours</a>
	<br><br><br><br><br><br>
	<!-- footer -->	
	<%@include file="footer.jsp" %>	
	

	
</body>
</html> 