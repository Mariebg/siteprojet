package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bdd.DbManager;
import model.Utilisateur;


public class AccueilController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("WEB-INF/accueil.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		String erreur="";
		String login=request.getParameter("login");//nom de la variable du name dans accueil.jsp
		String psw=request.getParameter("psw");
		boolean resultat=false;
		
		if (login.length()==0||psw.length()==0)
			{erreur="un des champs est vide";}
		else
			{erreur="les valeurs ne correspondent pas";}
		
		Utilisateur u= new Utilisateur();
		
		DbManager db=new DbManager();
		u= db.getUtilisateur(login, psw);
		
 		if (u!=null ) {
			if (u.isRole()==true) {
				methodes.AffichagePageAdmin.affichagePageAdmin(request); //affiche les utilisateurs en attente et valide dans 2 listes sur la page menuAdmin.jsp
				request.getRequestDispatcher("WEB-INF/menuAdmin.jsp").forward(request, response);
				}
			else {
				request.getSession().setAttribute("idUser",u.getId());
				request.getSession().setAttribute("role",u.isRole());
				request.getRequestDispatcher("WEB-INF/parcours.jsp").forward(request, response);
				}
		}
		else {
			erreur="login ou mot de passe incorrects ou compte inconnu";
			request.setAttribute("erreur",erreur);
			request.getRequestDispatcher("WEB-INF/accueil.jsp").forward(request, response);
			}	
		}
	}


