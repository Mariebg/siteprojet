package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bdd.DbManager;
import model.Reponse;

public class QuestionController extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		DbManager db= new DbManager();
		
		HttpSession session = request.getSession();
		int idQuizz = (int) session.getAttribute("idQuizz");
//		
//		System.out.println("id quizz recupere de la page quizz : "+idQuizz);
//

		request.getRequestDispatcher("WEB-INF/question.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		String erreur = "";
		DbManager db= new DbManager();
		
		HttpSession session = request.getSession();
		int idQuizz=(int) session.getAttribute("idQuizz"); //recuperer par la session creee
//		int idQuizz=Integer.parseInt(request.getParameter("idQuizz")); //passer comme valeur ds la jsp
		System.out.println("idQuizz "+idQuizz);
		
		String question = request.getParameter("question");// nom de la variable du name dans accueil.jsp
		
		System.out.println("passage dans le post de question");

		if (question.length() == 0) {
			erreur = "un des champs est vide";
		} else {
			System.out.println("avant entree de la question ds la base");
			if (request.getParameter("repCorrect")!=null) {
				ArrayList<Reponse> reponse = new ArrayList<Reponse>();
				int repOk=-1;
				int numRepOk = Integer.parseInt(request.getParameter("repCorrect")); //recupere la valeur du bouton radio
				for (int i = 0; i < 5; i++) {
					
					System.out.println("contenu de reponse : "+request.getParameter("reponse"+(i+1))+" --i : "+i);

					
					if (!request.getParameter("reponse"+(i+1)).equals("")) { //test reponse saisie
						
						System.out.println("avant l'ajout dans la table");
						
						Reponse reponseAjouter = new Reponse(request.getParameter("reponse"+(i+1)));
						reponse.add(reponseAjouter);
						
						System.out.println(reponse.size()-1);
						
						if (numRepOk==i+1) {//test si reponse ok saisie
							repOk=reponse.size();
							System.out.println("champ repOk : "+repOk);
						}
					}
				}
				System.out.println("Nb de reponse ds la liste reponse : "+reponse.size());
				
				if (!reponse.isEmpty() && repOk!=-1 && reponse.size()>1) {
					int idQuest = db.insertQuestion(question,idQuizz);
					if (idQuest!=-1) {
						int idRepOk = db.insertReponse(reponse,idQuest,repOk); //insere les reponses ds la table et renvoie l'id de la reponse correcte
						db.updateQuestion(idQuest,idRepOk);
						System.out.println("repCorrect "+idRepOk);
					}
				}
				else {if (repOk==-1) 	{
						request.setAttribute("question",question);
						
	
						for (int i = 0; i <reponse.size(); i++) {
							request.setAttribute("reponse"+(i+1),reponse.get(i).getTextRep());
							System.out.println("contenu de reponse : "+reponse.get(i).getTextRep()+" --i : "+i);
						}
						
						erreur= "Vous devez choisir la reponse correcte";	
						System.out.println(erreur);
			    	 } 
					 else {
							request.setAttribute("question",question);
							for (int i = 0; i <reponse.size(); i++) {
								request.setAttribute("reponse"+(i+1),reponse.get(i).getTextRep());
								System.out.println("contenu de reponse : "+reponse.get(i).getTextRep()+" --i : "+i);
							}
						erreur= "Vous devez entrer au moins deux reponses";	
						System.out.println(erreur);
						}
				}
			}			
			else {
				request.setAttribute("question",question);
//				for (int i = 0; i <reponse.size()-1; i++) {
//					request.setAttribute("reponse"+(i+1),reponse.get(i).getTextRep());
//					System.out.println("contenu de reponse : "+reponse.get(i).getTextRep()+" --i : "+i);
//				}

				erreur= "Vous n'avez pas choisie de reponse correcte";	
				System.out.println(erreur);
			}

		}
		request.setAttribute("erreur",erreur);

		request.getRequestDispatcher("WEB-INF/question.jsp").forward(request, response);
		}

}
