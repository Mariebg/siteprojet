package model;

public class Question {
	private int idQuest;
	private int idRepOk;
	private int idQuizz;
	private String question;

	public Question(int idQuest, int idRep, int idQuizz, String question) {
		this.idQuest=idQuest;
		this.idRepOk=idRepOk;
		this.idQuizz=idQuizz;
		this.question=question;				
	}
	
	// ----CONSTRUCTEUR PAR DEFAUT----//
	public Question() {
		
	}
	
	public Question(int idQuest, String question) {
		this.idQuest=idQuest;
		this.question=question;				
	}

	public int getIdQuest() {
		return idQuest;
	}

	public void setIdQuest(int idQuest) {
		this.idQuest = idQuest;
	}

	public int getIdRepOk() {
		return idRepOk;
	}

	public void setIdRep(int idRepOk) {
		this.idRepOk = idRepOk;
	}

	public int getIdQuizz() {
		return idQuizz;
	}

	public void setIdQuizz(int idQuizz) {
		this.idQuizz = idQuizz;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idQuest;
		result = prime * result + idQuizz;
		result = prime * result + idRepOk;
		result = prime * result + ((question == null) ? 0 : question.hashCode());
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
		Question other = (Question) obj;
		if (idQuest != other.idQuest)
			return false;
		if (idQuizz != other.idQuizz)
			return false;
		if (idRepOk != other.idRepOk)
			return false;
		if (question == null) {
			if (other.question != null)
				return false;
		} else if (!question.equals(other.question))
			return false;
		return true;
	}
	
	
	
	
}
