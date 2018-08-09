package model;

public class Reponse {
	private int idRep;
	private String textRep;
	private int idQuest;
	private int idParcours;

	public Reponse(int idRep, String textRep, int idQuest, int idParcours) {
		this.idRep=idRep;
		this.textRep=textRep;
		this.idQuest=idQuest;
		this.idParcours=idParcours;
	}
	
	public Reponse(int idRep, int idQuest, String textRep) {
		this.idRep=idRep;
		this.idQuest=idQuest;
		this.textRep=textRep;
	}
	
	public Reponse(String textRep) {
		this.textRep=textRep;
	}
	
	
	// ----CONSTRUCTEUR PAR DEFAUT----//
	public Reponse() {
		
	}
	public int getIdRep() {
		return idRep;
	}
	public void setIdRep(int idRep) {
		this.idRep = idRep;
	}
	public String getTextRep() {
		return textRep;
	}
	public void setTextRep(String textRep) {
		this.textRep = textRep;
	}
	public int getIdQuest() {
		return idQuest;
	}
	public void setIdQuest(int idQuest) {
		this.idQuest = idQuest;
	}
	public int getIdParcours() {
		return idParcours;
	}
	public void setIdParcours(int idParcours) {
		this.idParcours = idParcours;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idParcours;
		result = prime * result + idQuest;
		result = prime * result + idRep;
		result = prime * result + ((textRep == null) ? 0 : textRep.hashCode());
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
		Reponse other = (Reponse) obj;
		if (idParcours != other.idParcours)
			return false;
		if (idQuest != other.idQuest)
			return false;
		if (idRep != other.idRep)
			return false;
		if (textRep == null) {
			if (other.textRep != null)
				return false;
		} else if (!textRep.equals(other.textRep))
			return false;
		return true;
	}
	
	
	
	
}
