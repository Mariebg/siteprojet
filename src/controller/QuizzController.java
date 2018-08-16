package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bdd.DbManager;
import model.Competence;
import model.Utilisateur;

public class QuizzController extends HttpServlet  {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("passage dans le doget du QUIZZ");
		//Chargement de la liste des competences
		DbManager db=new DbManager();
		ArrayList<Competence> listeCompetences=db.listerCompetence();
//		request.setAttribute("listeCompetences", listeCompetences);
		HttpSession session = request.getSession();
		session.setAttribute("listeCompetences", listeCompetences);
		request.getRequestDispatcher("WEB-INF/quizz.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		DbManager db=new DbManager();
		int idCompet=-1;
		
		List<Competence> competences = new ArrayList();
		competences = db.listerCompetence();
		
		System.out.println("choix de la competence dans question "+ request.getParameter("choix"));

		if (!competences.isEmpty()) {

			int idQuizz=-1;
			if(request.getParameter("choix") != null) {
				idCompet = Integer.parseInt(request.getParameter("choix")); 
				System.out.println("id recuperer "+idCompet);
				
				// nom de la variable du name dans quizz.jsp
				String intitulQuizz = request.getParameter("intitulQuizz");
				//stocke les variables dans la session
				HttpSession session = request.getSession();
				session.setAttribute("idCompet", idCompet);
				session.setAttribute("intitulQuizz", intitulQuizz);
				request.getRequestDispatcher("WEB-INF/question.jsp").forward(request, response);
				}
			 else {
				request.getRequestDispatcher("WEB-INF/quizz.jsp").forward(request, response);
			 }		
		} else {
			request.getRequestDispatcher("WEB-INF/quizz.jsp").forward(request, response);
		}		
	}
}
