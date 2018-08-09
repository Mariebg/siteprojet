package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bdd.DbManager;

public class ReponseController extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("dans le doget de reponse controller");
		request.getRequestDispatcher("WEB-INF/reponse.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		HttpSession session = request.getSession();
		String erreur = "";
		DbManager db= new DbManager();
		
		int nbQuestion = Integer.parseInt(request.getParameter("nbQuestion"));
		int idQuizz = Integer.parseInt(request.getParameter("idQuizz"));
		
		for(int i=1; i<=nbQuestion;i++) {
			System.out.println("rep donne : "+request.getParameter("repDonne"+i));
			if (request.getParameter("repDonne"+i)==null) {
				//recuperer les donnees pour les renvoyees
				erreur = "Vous n'avez pas repondu à toutes les questions !";
				request.setAttribute("erreur",erreur);
				request.setAttribute("nbQuestion",nbQuestion);
				request.setAttribute("idQuizz",idQuizz);
				request.getRequestDispatcher("WEB-INF/reponse.jsp").forward(request, response);
				return;
			}
		}
		int idUser = (int) session.getAttribute("idUser");
		System.out.println("id utilisateur"+idUser);

		for(int i=1; i<=nbQuestion;i++) {
			int idQuestion = Integer.parseInt(request.getParameter("question"+i));
			int idRepDonne = Integer.parseInt(request.getParameter("repDonne"+i));
			db.insererChoixUser(idQuizz,idQuestion,idRepDonne);
			int reponseJuste=db.verifierReponse(idQuizz,idQuestion,idRepDonne);
			
	
		}
		request.getRequestDispatcher("WEB-INF/accueil.jsp").forward(request, response);
	}	

}
