package model;

import java.util.ArrayList;

public class Parcours {
	private int idParcours;
	private int score;
	private int idUser;
	private int idQuizz;

	
	public Parcours(int idParcours, int score, int idUser, int idQuizz) {
		this.idParcours=idParcours;
		this.score=score;
		this.idUser=idUser;
		this.idQuizz=idQuizz;	
	}
	
	
	public Parcours() {
		
	}


	public int getIdParcours() {
		return idParcours;
	}


	public void setIdParcours(int idParcours) {
		this.idParcours = idParcours;
	}


	public int getScore() {
		return score;
	}


	public void setScore(int score) {
		this.score = score;
	}


	public int getIdUser() {
		return idUser;
	}


	public void setIdUser(int idUser) {
		this.idUser = idUser;
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
		result = prime * result + idParcours;
		result = prime * result + idQuizz;
		result = prime * result + idUser;
		result = prime * result + score;
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
		Parcours other = (Parcours) obj;
		if (idParcours != other.idParcours)
			return false;
		if (idQuizz != other.idQuizz)
			return false;
		if (idUser != other.idUser)
			return false;
		if (score != other.score)
			return false;
		return true;
	}

	
	


}
