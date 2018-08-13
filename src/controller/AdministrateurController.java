package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import bdd.DbManager;
import model.Utilisateur;

//import bean.Personne;

public class AdministrateurController extends HttpServlet {

	//private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//methode appelee pour la validation des stagiaires avec les checkbox
		HttpSession session = request.getSession();
		
		ArrayList<Utilisateur> users = (ArrayList<Utilisateur>) session.getAttribute("listeStgAttentes");
		System.out.println("passage dans le doget");
		if (users != null)
			for (int i = 0; i < users.size(); i++) {
				System.out.println("passage dans le test apres le doget");
				if (request.getParameter("" + users.get(i).getId()) != null) {
					System.out.println(users.get(i).getId());
					DbManager db=new DbManager();
					db.updateUtilisateur(users.get(i).getId());
				}
			}
		methodes.AffichagePageAdmin.affichagePageAdmin(request);
		request.getRequestDispatcher("WEB-INF/menuAdmin.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int typeErreur = 0;

		List<Utilisateur> listeStagiaires = new ArrayList();

		DbManager db=new DbManager();
		listeStagiaires = db.listerStgParStatut(false);

		System.out.println(listeStagiaires.get(0).getId());

		if (listeStagiaires != null) {
			for (int i = 0; i > listeStagiaires.size(); i++) {
				int id = listeStagiaires.get(i).getId();
				String nom = listeStagiaires.get(i).getNom();
				String dateCreation = listeStagiaires.get(i).getDateCreation();
				String tel = listeStagiaires.get(i).getTel();
				String ste = listeStagiaires.get(i).getSte();
				boolean statut = listeStagiaires.get(i).isStatut();
				String psw = listeStagiaires.get(i).getPsw();
				String mail = listeStagiaires.get(i).getMail();
				boolean role = listeStagiaires.get(i).isRole();

			}

			//request.setAttribute("liste stagiaire", listeStagiaires); // pour renvoyer la valeur dans la vue
			System.out.println(listeStagiaires.get(0).getNom());
			request.getRequestDispatcher("WEB-INF/menuAdmin.jsp").forward(request, response);
		} else {
			System.out.println("passage ici");
			request.getRequestDispatcher("WEB-INF/menuAdmin.jsp").forward(request, response);
		}
	}

}
