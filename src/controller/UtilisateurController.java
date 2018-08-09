package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bdd.DbManager;
import model.Utilisateur;


public class UtilisateurController extends HttpServlet {
	
	private static final long serialVersionUID = 1L; //pas obligatoire
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/utilisateur.jsp").forward(request, response);
			}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String erreur="";
		
			System.out.println("dans utilisatuer ajout");

				Utilisateur userInsert= new Utilisateur();
				
				String nom=request.getParameter("nom");
				String mail=request.getParameter("mail");
				String psw=request.getParameter("psw");
				String tel=request.getParameter("tel");
				String ste=request.getParameter("ste");
				String dateCreation=request.getParameter("dateCreation");
				
				userInsert.setNom(nom);
				userInsert.setMail(mail);
				userInsert.setDateCreation(dateCreation);
				userInsert.setTel(tel);
				userInsert.setSte(ste);
				userInsert.setStatut(false);
				userInsert.setRole(false);
				userInsert.setPsw(psw);
				
				DbManager db=new DbManager();
				boolean retour=db.insertUtilisateur(userInsert);

		
			request.setAttribute("erreur",erreur);
			request.getRequestDispatcher("WEB-INF/utilisateur.jsp").forward(request, response);
			
		
	
	} //fin doPost
	

	
	
	

}
