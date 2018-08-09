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

public class CompetenceController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		HttpSession session = request.getSession();
//		session.getAttribute("competenceBdds");
		
		DbManager db= new DbManager();

		List<Competence> listCompetence = new ArrayList();
		listCompetence = db.listerCompetence();

		if (listCompetence != null) {
			System.out.println("dans if de competence controller");
			for (int i = 0; i < listCompetence.size(); i++) {
				int idCompet = listCompetence.get(i).getIdCompet();
				String sujet = listCompetence.get(i).getSujet();
				String description = listCompetence.get(i).getDescription();
				// System.out.println(listCompetence.get(i).getSujet());
			}
			// pour renvoyer la valeur dans la vue

			request.setAttribute("listeCompetence", listCompetence);
			request.getRequestDispatcher("WEB-INF/competence.jsp").forward(request, response);
		} else {

			List<Competence> listeCompetence = db.listerCompetence();
			listCompetence = db.listerCompetence();

			System.out.println("passage ici competence comtroller");
			request.getRequestDispatcher("WEB-INF/competence.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String erreur = "";
		DbManager db= new DbManager();

		String sujet = request.getParameter("sujet");// nom de la variable du name dans accueil.jsp
		String description = request.getParameter("description");

		System.out.println("passage dans le poste de competence");

		if (sujet.length() == 0 || description.length() == 0) {
			erreur = "un des champs est vide";
		} else {
			System.out.println("avant entree de la competence ds la base");
			boolean retour = db.insertCompetence(sujet, description);
			System.out.println("avant entree de la competence ds la base");
		}
		List<Competence> listCompetence = new ArrayList();
		listCompetence = db.listerCompetence();
		request.setAttribute("listeCompetence", listCompetence);
		request.setAttribute("erreur", erreur);
		request.getRequestDispatcher("WEB-INF/competence.jsp").forward(request, response);
	}
}
