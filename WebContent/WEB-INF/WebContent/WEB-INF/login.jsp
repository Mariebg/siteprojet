<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>


	<div align="center"> ${! empty erreur? erreur : ''}</div>
	<!-- FORMULAIRE -->
	<form action="login" method="post">
		<fieldset>
			<legend>Se connecter</legend>
				<label>Login: 
					<input type="text" name="login" placeholder="E-mail"/>
				</label><br>
				<br><label>Password 
						<input type="password" name="password" placeholder="votre mot de passe" />
					</label><br>
				<br><input type="submit" />
				<input type="reset" /><br>
				
				<br><a href="/site/inscription">Inscriptions</a>				
		</fieldset>
	</form>
	

</body>
</html>