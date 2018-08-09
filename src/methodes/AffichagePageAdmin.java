package methodes;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import bdd.DbManager;
import model.Utilisateur;

public class AffichagePageAdmin {
	public static void affichagePageAdmin(HttpServletRequest request) {

		DbManager db=new DbManager();

		//Chargement de la liste des stagiaires en attente de validation
		ArrayList<Utilisateur> listeStgAttentes=db.listerStgParStatut(false);
		request.setAttribute("listeStgAttentes", listeStgAttentes);

		//Chargement de la liste des stagiaires validés
		ArrayList<Utilisateur> listeStgValides=db.listerStgParStatut(true);
		request.setAttribute("listeStgValides", listeStgValides);
	}

}
