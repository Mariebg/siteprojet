<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ActionPossible</title>
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

.fieldset-login {
	height: 319px;
    border-radius: 10px;
    width: 23%;
    margin: auto;
    box-shadow: 0px 6px 16px 0px #888383;
    border: none;
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
	
	<br><br><br><br><br><br><br><br><br><br>  
	
      <br><a class="btn-login" href="/siteprojet/resultatParcours" class="href-login">Resultat des parcours</a>
	<br><br><br><br><br>
      <br><a class="btn-login" href="/siteprojet/parcours" class="href-login">Nouveau Parcours</a>
	<br><br><br><br><br><br>
	<!-- footer -->	
	<%@include file="footer.jsp" %>	



</body>
</html>