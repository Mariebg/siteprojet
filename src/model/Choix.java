package model;

public class Choix {
	private int idChoix;
	private int idQuest;
	private int idRepDonne;
	private int idParcours;
	private int idQuizz;
	
	public Choix(int idChoix, int idQuest, int idRepDonne, int idParcours,int idQuizz) {
		this.idChoix=idChoix;
		this.idQuest=idQuest;
		this.idRepDonne=idRepDonne;
		this.idParcours=idParcours;
		this.idQuizz=idQuizz;		
	}
	
	
	public Choix() {
		
	}


	public int getIdChoix() {
		return idChoix;
	}


	public void setIdChoix(int idChoix) {
		this.idChoix = idChoix;
	}


	public int getIdQuest() {
		return idQuest;
	}


	public void setIdQuest(int idQuest) {
		this.idQuest = idQuest;
	}


	public int getIdRepDonne() {
		return idRepDonne;
	}


	public void setIdRepDonne(int idRepDonne) {
		this.idRepDonne = idRepDonne;
	}


	public int getIdParcours() {
		return idParcours;
	}


	public void setIdParcours(int idParcours) {
		this.idParcours = idParcours;
	}


	public int getIdQuizz() {
		return idQuizz;
	}


	public void setIdQuizz(int idQuizz) {
		this.idQuizz = idQuizz;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idChoix;
		result = prime * result + idParcours;
		result = prime * result + idQuest;
		result = prime * result + idQuizz;
		result = prime * result + idRepDonne;
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
		Choix other = (Choix) obj;
		if (idChoix != other.idChoix)
			return false;
		if (idParcours != other.idParcours)
			return false;
		if (idQuest != other.idQuest)
			return false;
		if (idQuizz != other.idQuizz)
			return false;
		if (idRepDonne != other.idRepDonne)
			return false;
		return true;
	}
	
	
}
