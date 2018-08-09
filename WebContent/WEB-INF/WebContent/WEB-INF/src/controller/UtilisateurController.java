package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class UtilisateurController extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.getRequestDispatcher("WEB-INF/utilisateur.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int nbErreurs = 0;
		String erreur = "";
		String mail = request.getParameter("mail");
		String password = request.getParameter("password");
		
		if (mail.length() == 0) {
			erreur = "le champs mail est vide";
			nbErreurs++;
		}
		
		if (password.length() == 0) {
			erreur ="le champs password est vide";
			nbErreurs++;
		}
		if(nbErreurs == 0) {
			request.getRequestDispatcher("WEB-INF/administrateur.jsp").forward(request, response);	
		}else {
			request.getRequestDispatcher("WEB-INF/utilisateur.jsp").forward(request, response);
		}
		
	}

}