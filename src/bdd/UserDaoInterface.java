package bdd;

import java.util.ArrayList;

import model.Competence;
import model.Parcours;
import model.Question;
import model.Quizz;
import model.Reponse;
import model.Utilisateur;

public interface UserDaoInterface {
	// -------------------------trouver un utilisateur -------------------
	public  Utilisateur getUtilisateur(String login, String psw1);
	//--------------------- inserer des utilisateurs ---------------------------
	public boolean insertUtilisateur(Utilisateur userInsert);
	//--------------lister les utilisateurs -----------------------
	public ArrayList<Utilisateur> listeUsers();
	// -------------------------modifier un utilisateur -------------------
	public boolean updateUtilisateur(int id);
	//--------------Liste des utilisateurs en fonction de leur statut------------------
	public ArrayList<Utilisateur> listerStgParStatut(boolean statut1);
	
	
	//--------------inserer competences --------------------------------------
	public  boolean insertCompetence(String sujet,String description);
	//--------------Liste des competences------------------
	public ArrayList<Competence> listerCompetence();
	
	
	//--------------inserer questions --------------------------------------
	public int insertQuestion(String question, int idQuizz);
	//--------------inserer reponses --------------------------------------
	public int insertReponse(ArrayList<Reponse> reponse, int idQuest, int numRepOk);
	//--------------modifier questions --------------------------------------
	public  void updateQuestion(int idQuest, int idRepOk);
	
	//--------------inserer quizz --------------------------------------
	public int insererQuizz(int idCompet,String intitulQuizz);

	//--------------Liste des quizz en fonction d'une competence choisie------------------
	public ArrayList<Quizz> listerQuizz(int idQuizz);

	//--------------Liste des question en fonction du quizz choisi------------------
	public ArrayList<Question> listerQuestion(int idQuizz);

	//--------------Liste les reponses correspondant aux questions du quizz------------------
	public ArrayList<Reponse> listerReponse(ArrayList<Question> questionBdds);

	//--------------inserer le choix de l'utilisateur --------------------------------------
	public void insererChoixUser(int idQuizz,int idQuestion,int idRepDonne);
	
	//----------------calcul du score --------------------------
	public int 	verifierReponse(int idQuizz,int idQuest, int idRepDonne);
	
	//--------------inserer un nouveau parcours --------------------------------------
	public boolean insererParcours(int idUser,int idQuizz,String score);

	public ArrayList<Parcours> listerParcours(int idUser);

}
