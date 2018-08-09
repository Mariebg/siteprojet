package model;

public class Quizz {
	private int idQuizz;
	private int idCompet;
	private String intitulQuizz;
	
	public Quizz(int idQuizz, int idCompet, String intitulQuizz) {
		this.idQuizz=idQuizz;
		this.idCompet=idCompet;
		this.intitulQuizz=intitulQuizz;
}

	// ----CONSTRUCTEUR PAR DEFAUT----//
	public Quizz() {
		
	}
	
	
	public Quizz(int idQuizz, String intitulQuizz) {
		this.idQuizz=idQuizz;
		this.intitulQuizz=intitulQuizz; 
	}

	
	public int getIdQuizz() {
		return idQuizz;
	}

	public void setIdQuizz(int idQuizz) {
		this.idQuizz = idQuizz;
	}

	public int getIdCompet() {
		return idCompet;
	}

	public void setIdCompet(int idCompet) {
		this.idCompet = idCompet;
	}

	public String getIntitulQuizz() {
		return intitulQuizz;
	}

	public void setIntitulQuizz(String intitulQuizz) {
		this.intitulQuizz = intitulQuizz;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idCompet;
		result = prime * result + idQuizz;
		result = prime * result + ((intitulQuizz == null) ? 0 : intitulQuizz.hashCode());
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
		Quizz other = (Quizz) obj;
		if (idCompet != other.idCompet)
			return false;
		if (idQuizz != other.idQuizz)
			return false;
		if (intitulQuizz == null) {
			if (other.intitulQuizz != null)
				return false;
		} else if (!intitulQuizz.equals(other.intitulQuizz))
			return false;
		return true;
	}

	
}
