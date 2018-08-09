package fr.afpa.projet.model;

public class User {
	private int id_user;
	private String nom;
	private String statut;
	private String societe;
	private String dateNai;
	private String mail;
	private String mdp;
	
	public User(int id_user, String nom, String statut, String dateNai, String mail, String mdp){
		this.id_user=id_user;
		this.nom=nom;
		this.statut=statut;
		this.dateNai=dateNai;
		this.mail=mail;
		this.mdp=mdp;
		
	}
	
	public User(String nom, String statut, String dateNai, String mail, String mdp){
		this.nom=nom;
		this.statut=statut;
		this.dateNai=dateNai;
		this.mail=mail;
		this.mdp=mdp;
		
	}

	public User(String nom2, String statut2, String societe2, String dateNai2, String mail2, String mdp2) {
		// TODO Auto-generated constructor stub
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}

	public String getSociete() {
		return societe;
	}

	public void setSociete(String societe) {
		this.societe = societe;
	}

	public String getDateNai() {
		return dateNai;
	}

	public void setDateNai(String dateNai) {
		this.dateNai = dateNai;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	
	

}
