package model;

public class Administrateur extends Utilisateur{

	//constructeur
	public Administrateur(int id,
			String nom, 
			String prenom,
			String dateCreation, 
			String tel, 
			String ste, 
			boolean statut, 
			String psw,
			String mail,
			boolean role) {
		super(id, nom, prenom, dateCreation, tel, ste, statut, psw, mail, role);
		// TODO Auto-generated constructor stub
	}

	public boolean creerCpte() {
		boolean resultat=false;
		return resultat;
	};

}
