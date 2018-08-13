package model;

import java.util.ArrayList;

public class Parcours {
	private int idParcours;
	private int idUser;
	private int idQuizz;
	private String score;
	private String intituleQuizz;

	
	public Parcours(int idParcours, String score, int idUser, int idQuizz) {
		this.idParcours=idParcours;
		this.score=score;
		this.idUser=idUser;
		this.idQuizz=idQuizz;	
	}
	
	public Parcours(int idParcours, int idUser, int idQuizz, String score, String intituleQuizz) {
		this.idParcours=idParcours;
		this.idUser=idUser;
		this.idQuizz=idQuizz;	
		this.score=score;
		this.intituleQuizz=intituleQuizz;	
	}
	
	public Parcours() {
	}

	public int getIdParcours() {
		return idParcours;	}
	public void setIdParcours(int idParcours) {
		this.idParcours = idParcours;	}


	public String getScore() {
		return score;}
	public void setScore(String score) {
		this.score = score;}


	public int getIdUser() {
		return idUser;}
	public void setIdUser(int idUser) {
		this.idUser = idUser;}


	public int getIdQuizz() {
		return idQuizz;}
	public void setIdQuizz(int idQuizz) {
		this.idQuizz = idQuizz;}


	public String getIntituleQuizz() {
		return intituleQuizz;}
	public void setIntituleQuizz(String intituleQuizz) {
		this.intituleQuizz = intituleQuizz;}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idParcours;
		result = prime * result + idQuizz;
		result = prime * result + idUser;
		result = prime * result + ((intituleQuizz == null) ? 0 : intituleQuizz.hashCode());
		result = prime * result + ((score == null) ? 0 : score.hashCode());
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
		if (intituleQuizz == null) {
			if (other.intituleQuizz != null)
				return false;
		} else if (!intituleQuizz.equals(other.intituleQuizz))
			return false;
		if (score == null) {
			if (other.score != null)
				return false;
		} else if (!score.equals(other.score))
			return false;
		return true;
	}


}
