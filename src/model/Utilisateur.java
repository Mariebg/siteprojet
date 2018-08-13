package model;

public class Utilisateur {
	private int id;
	private String nom;
	private String prenom;
	private String dateCreation;
	private String tel;
	private String ste;
	private boolean statut;
	private String psw;
	private String mail;
	private boolean role;

	public Utilisateur(int id, String nom, String prenom, String dateCreation, String tel, String ste, boolean statut,
			String psw, String mail, boolean role) {

		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.dateCreation = dateCreation;
		this.tel = tel;
		this.ste = ste;
		this.statut = statut;
		this.psw = psw;
		this.mail = mail;
		this.role = role;
	}

	public Utilisateur(int id, String nom, String prenom, boolean role) {
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.role = role;
	}

	// CONTRUCTEUR POUR INSCRIPTION
	public Utilisateur(String nom, String prenom, String dateCreation, String tel,String ste, boolean statut, String psw, String mail) {
		this.nom = nom;
		this.prenom = prenom;
		this.dateCreation = dateCreation;
		this.tel = tel;
		this.ste = ste;
		this.statut = statut;
		this.psw = psw;
		this.mail = mail;
	}

	public Utilisateur() {
		// TODO Auto-generated constructor stub
	}

	// getters et setters
	public int getId() {
		return id;	}
	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;	}
	public void setNom(String nom) {
		this.nom = nom;}

	public String getPrenom() {
		return prenom;	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;}
	

	public String getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(String dateCreation) {
		this.dateCreation = dateCreation;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSte() {
		return ste;
	}

	public void setSte(String ste) {
		this.ste = ste;
	}

	public boolean isStatut() {
		return statut;
	}

	public void setStatut(boolean statut) {
		this.statut = statut;
	}

	public String getPsw() {
		return psw;
	}

	public void setPsw(String psw) {
		this.psw = psw;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public boolean isRole() {
		return role;
	}

	public void setRole(boolean role) {
		this.role = role;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dateCreation == null) ? 0 : dateCreation.hashCode());
		result = prime * result + id;
		result = prime * result + ((mail == null) ? 0 : mail.hashCode());
		result = prime * result + ((nom == null) ? 0 : nom.hashCode());
		result = prime * result + ((prenom == null) ? 0 : prenom.hashCode());
		result = prime * result + ((psw == null) ? 0 : psw.hashCode());
		result = prime * result + (role ? 1231 : 1237);
		result = prime * result + (statut ? 1231 : 1237);
		result = prime * result + ((ste == null) ? 0 : ste.hashCode());
		result = prime * result + ((tel == null) ? 0 : tel.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Utilisateur other = (Utilisateur) obj;
		if (dateCreation == null) {
			if (other.dateCreation != null)
				return false;
		} else if (!dateCreation.equals(other.dateCreation))
			return false;
		if (id != other.id)
			return false;
		if (mail == null) {
			if (other.mail != null)
				return false;
		} else if (!mail.equals(other.mail))
			return false;
		if (nom == null) {
			if (other.nom != null)
				return false;
		} else if (!nom.equals(other.nom))
			return false;
		if (prenom == null) {
			if (other.prenom != null)
				return false;
		} else if (!prenom.equals(other.prenom))
			return false;
		if (psw == null) {
			if (other.psw != null)
				return false;
		} else if (!psw.equals(other.psw))
			return false;
		if (role != other.role)
			return false;
		if (statut != other.statut)
			return false;
		if (ste == null) {
			if (other.ste != null)
				return false;
		} else if (!ste.equals(other.ste))
			return false;
		if (tel == null) {
			if (other.tel != null)
				return false;
		} else if (!tel.equals(other.tel))
			return false;
		return true;
	}

}
