package model;

public class Administrateur extends Utilisateur{

	//constructeur
	public Administrateur(int id,
			String nom, 
<<<<<<< HEAD
			String prenom, 
=======
			String prenom,
>>>>>>> refs/remotes/origin/cynthia
			String dateCreation, 
			String tel, 
			String ste, 
			boolean statut, 
			String psw,
			String mail,
			boolean role) {
<<<<<<< HEAD
		super(id, nom,prenom, dateCreation, tel, ste, statut, psw, mail, role);
=======
		super(id, nom, prenom, dateCreation, tel, ste, statut, psw, mail, role);
>>>>>>> refs/remotes/origin/cynthia
		// TODO Auto-generated constructor stub
	}

	public boolean creerCpte() {
		boolean resultat=false;
		return resultat;
	};

}
