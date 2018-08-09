package model;

public class Competence {
	private int idCompet;
	private String sujet;
	private String description;
	
	public Competence() {
		
	}
	
	public Competence(int idCompet, String sujet, String description) {
		this.idCompet=idCompet;
		this.sujet=sujet;
		this.description=description;
	}

	public int getIdCompet() {
		return idCompet;
	}

	public void setIdCompet(int idCompet) {
		this.idCompet = idCompet;
	}

	public String getSujet() {
		return sujet;
	}

	public void setSujet(String sujet) {
		this.sujet = sujet;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
