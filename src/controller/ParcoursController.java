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
import model.Quizz;
import model.Reponse;
import model.Utilisateur;

public class ParcoursController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DbManager db = new DbManager();
		String erreur = null;
		System.out.println("debut de doget");
		
		HttpSession session = request.getSession();
		ArrayList<Competence> listCompetence = (ArrayList<Competence>) session.getAttribute("listCompetence");
//		int idUser = (int) session.getAttribute("idUser");
//		System.out.println("id utilisateur"+idUser);
		if (listCompetence != null) {
			System.out.println("passage ici competence comtroller");
			if (request.getParameter("choix")!=null) {
			if(request.getParameter("choix").equals("-")){
				//si l'utilisateur a saisi quelque chose dans le input text
				erreur="Vous devez faire un choix parmis les competences proposees";
				System.out.println("choix pas ok ");
			}
			else {
				//Si non c'est qu'il a choisit une valeur dans la DropDownList
				int idCompet = Integer.parseInt(new String (request.getParameter("choix")));
				System.out.println("choix : "+ idCompet);
				request.setAttribute("idCompet",idCompet);
			}
		}}
		
//			System.out.println("liste des competences null");
		
			List<Competence> listeCompetence = db.listerCompetence();
			request.setAttribute("listCompetence", listeCompetence);
			request.setAttribute("erreur",erreur);

			request.getRequestDispatcher("WEB-INF/parcours.jsp").forward(request, response);
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("entree dans le post de parcourscontroller " +request.getParameter("choix"));
		
		String erreur=null;
		//probleme non regle quand l'utilisateur ne choisit pas de questionnaire
		//à faire
		if(request.getParameter("choix")==(null)){
			//si l'utilisateur a saisi quelque chose dans le input text
			erreur="Vous devez faire un choix parmis les questionnaires proposes";
			System.out.println("choix pas ok ");
			request.getRequestDispatcher("WEB-INF/parcours.jsp").forward(request, response);
		}
		else {
			//Si non c'est qu'il a choisit une valeur dans la DropDownList
			int idQuizz = Integer.parseInt(new String (request.getParameter("choix")));
			System.out.println("choix : "+ idQuizz);
			request.setAttribute("idQuizz",idQuizz);
			String intitulQuizz=request.getParameter("intitulQuizz");
			request.setAttribute("intitulQuizz",intitulQuizz);
			request.getRequestDispatcher("WEB-INF/reponse.jsp").forward(request, response);
		}
	}

}
