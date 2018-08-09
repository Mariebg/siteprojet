package fr.afpa.projet.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.afpa.projet.model.User;

/**
 * Servlet implementation class Controller
 */

public class RegistrerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/registrer.jsp").forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				//RECUPERER LES INFOS VUE
				String nom = request.getParameter("nom");
				String statut = request.getParameter("statut");
				String societe = request.getParameter("societe");
				String dateNai = request.getParameter("dateNai");
				String mail = request.getParameter("mail");
				String mdp = request.getParameter("mdp");
					
				String erreur="";
				
				if(nom.length()==0 || statut.length()==0 || societe.length()==0 || dateNai.length()==0 || mail.length()==0 || mdp.length()==0) {
					erreur="<h2>L'un des champ est vide !</h2>";
				}
				
				if("".equals(erreur)) {
					User user = new User(nom, statut, societe, dateNai, mail, mdp);
					request.setAttribute("user", user);
					request.getRequestDispatcher("WEB-INF/accueil.jsp").forward(request,  response);
						
				}else {
					//ENVOYER LES INFOS A LA VUE
					request.setAttribute("erreur", erreur);
					request.setAttribute("nom", nom);
					request.setAttribute("statut", statut);
					request.setAttribute("societe", societe);
					request.setAttribute("dateNai", dateNai);
					request.setAttribute("mail", mail);
					request.setAttribute("mdp", mdp);				
					request.getRequestDispatcher("WEB-INF/inscription.jsp").forward(request,  response);

		}
	}
}
