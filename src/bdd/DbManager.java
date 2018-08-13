package bdd;

import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import model.Competence;
import model.Parcours;
import model.Question;
import model.Quizz;
import model.Reponse;
import model.Utilisateur;

public class DbManager implements UserDaoInterface{
	
	
	//--------------lister les utilisateurs -----------------------
	public ArrayList<Utilisateur> listeUsers() {
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		//statement execute la requete
		Statement st=null;
		
		//recupere les résultats de la requete
		String sql = "select * from user ";
		try {
			st = (Statement) connexion.prepareStatement(sql);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			System.out.println("erreur execution de la requete");
			e1.printStackTrace();
		}
		// execussion de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
		ResultSet rs;
		try {
			rs = st.executeQuery(sql);
			ArrayList<Utilisateur> userBdds=new ArrayList<Utilisateur>();
			try {
				//recuperation des données
				while(rs.next()) {
					int id=rs.getInt("ID");
					String nom=rs.getString("NOM");
					String prenom=rs.getString("PRENOM");
					String dateCreation=rs.getString("DATECREATION");
					String tel=rs.getString("TEL");
					String ste=rs.getString("STE");
					boolean statut=rs.getBoolean("STATUT");
					String psw=rs.getString("PSW");
					String mail=rs.getString("MAIL");
					boolean role=rs.getBoolean("ROLE");
					
					Utilisateur unUser=new Utilisateur(id,nom,prenom,dateCreation,tel,ste,statut,psw,mail,role);
					
					userBdds.add(unUser);  //insere les données ds l'Array "users"
					};
					return userBdds; 
			} catch (SQLException e) {
				e.printStackTrace();
				}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return null;
	};
	
	// -------------------------trouver un utilisateur -------------------
	public Utilisateur getUtilisateur(String login, String psw1) {
		// TODO Auto-generated method stub
			//connection etablit la communication avec la base de données
			java.sql.Connection connexion=Utilities.openConnection();
			//statement execute la requete
			Statement st=null;
			//recupere les résultats de la requete
			String sql = "select * from user where mail='"+login+"' and psw="+"'"+psw1+"'";
			try {
				st = (Statement) connexion.prepareStatement(sql);
				System.out.println("connection etablie");
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			// execution de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
			ResultSet rs;
			try {
				rs = st.executeQuery(sql);
				System.out.println("query executee");
			try {
				if(rs.next()) {
					int id=rs.getInt("ID");
					String nom=rs.getString("NOM");
					String prenom=rs.getString("PRENOM");
					boolean role=rs.getBoolean("ROLE");
					
					Utilisateur user=new Utilisateur(id,nom,prenom,role);
					return user;}
				
				else return null;
					 
				} catch (SQLException e) {
					e.printStackTrace();
					}
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			return null;
		}

	// -------------------------modifier un utilisateur -------------------
	public boolean updateUtilisateur(int id) {
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		//statement execute la requete
		Statement st=null;
		//recupere les résultats de la requete
		String sql = "update user  SET `statut` = '1'  where id='"+id+"'";
		try {
			st = (Statement) connexion.prepareStatement(sql);
			System.out.println("connection etablie");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		// execution de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
		ResultSet rs;
		int rsupdate;
		try {
			System.out.println(sql);
			rsupdate = st.executeUpdate(sql);
			System.out.println("rsupdate "+rsupdate);
			System.out.println("query executee");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return false;
	}
	
	//--------------------- inserer des utilisateurs ---------------------------
	public boolean insertUtilisateur(Utilisateur userInsert) {
		
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		
		//statement execute la requete
		Statement st=null;
		
		// requete
		String sql=" INSERT INTO `user`(`nom`, `dateCreation`, `tel`, `ste`, `statut`, `psw`, `mail`, `role`) VALUES ('"+
										userInsert.getNom()+"','"+
										userInsert.getDateCreation()+"','"+
										userInsert.getTel()+"','"+
										userInsert.getSte()+"',"+
										userInsert.isStatut()+",'"+
										userInsert.getPsw()+"','"+
										userInsert.getMail()+"',"+
										userInsert.isRole()+")";
		try {
			st = (Statement) connexion.prepareStatement(sql);
			System.out.println("connection etablie");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		int rsinsert;
		try {
			System.out.println(sql);
			rsinsert = st.executeUpdate(sql);
			System.out.println("rsupdate "+rsinsert);
			System.out.println("ajout executee");
			return true;
		} catch (SQLException e1) {
			System.out.println("erreur execution de la requete");
			e1.printStackTrace();
		}
	return false;	
	};
	
	//--------------inserer competences --------------------------------------
	public boolean insertCompetence(String sujet,String description) {
		
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		
		//statement execute la requete
		Statement st=null;
		
		// requete
		String sql=" INSERT INTO `competence`(`SUJET`, `DESCRIPTION`) VALUES (\""+
										sujet+"\",\""+
										description+"\""+")";
		System.out.println("sql: "+ sql);
		try {
			st = (Statement) connexion.prepareStatement(sql);
			System.out.println("connection etablie");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		// execution de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
		ResultSet rs;
		int rsinsert;
		try {
			System.out.println(sql);
			rsinsert = st.executeUpdate(sql);
			System.out.println("rsupdate "+rsinsert);
			System.out.println("ajout executee");
			return true;
		} catch (SQLException e1) {
			System.out.println("erreur execution de la requete");
			e1.printStackTrace();
		}
	return false;	
	};

	//--------------inserer quizz --------------------------------------
	public int insererQuizz(int idCompet,String intitulQuizz) {
		
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		
		//statement execute la requete
		Statement st=null;
		
		// requete
		String sql=" INSERT INTO `QUIZZ`(`ID_COMPET`, `INTITUL_QUIZZ`) VALUES ("
										+idCompet+",\""+
										intitulQuizz+"\""+")";
		System.out.println("sql: "+ sql);
		try {
			st = (Statement) connexion.prepareStatement(sql);
			System.out.println("connection etablie");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		// execution de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
		ResultSet rs;
		int rsinsert;
		try {
			System.out.println(sql);
			ResultSet res;
			rsinsert = st.executeUpdate(sql,PreparedStatement.RETURN_GENERATED_KEYS);// execute le sql +  cles retournees ds st
			res=st.getGeneratedKeys();  //mis les cles ds res
			res.next(); // lit la premiere cle de res
			int id=res.getInt(1); //pas de while car une seule cle
			System.out.println("id genere "+id);
			
			System.out.println("rsupdate "+rsinsert);
			System.out.println("ajout executee");
			return id;
		} catch (SQLException e1) {
			System.out.println("erreur execution de la requete");
			e1.printStackTrace();
		}
	return -1;	
	};
	
	//--------------Liste des utilisateurs en fonction de leur statut------------------
	public ArrayList<Utilisateur> listerStgParStatut(boolean statut1) {
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		//statement execute la requete
		Statement st=null;
		
		//recupere les résultats de la requete
		String sql = "select * from user where statut="+statut1;
		try {
			st = (Statement) connexion.prepareStatement(sql);
		} catch (SQLException e1) {
			System.out.println("erreur execution de la requete");
			e1.printStackTrace();
		}
		// execution de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
		ResultSet rs;
		try {
			rs = st.executeQuery(sql);
			ArrayList<Utilisateur> stagiaireBdds=new ArrayList<Utilisateur>();
			try {
				//recuperation des données
				while(rs.next()) {
					int id=rs.getInt("ID");
					String nom=rs.getString("NOM");
					String prenom=rs.getString("PRENOM");
					String dateCreation=rs.getString("DATECREATION");
					String tel=rs.getString("TEL");
					String ste=rs.getString("STE");
					boolean statut=rs.getBoolean("STATUT");
					String psw=rs.getString("PSW");
					String mail=rs.getString("MAIL");
					boolean role=rs.getBoolean("ROLE");
					
					Utilisateur unUser=new Utilisateur(id,nom,prenom,dateCreation,tel,ste,statut,psw,mail,role);
					
					stagiaireBdds.add(unUser);  //insere les données ds l'Array "users"
					};
					return stagiaireBdds; 
			} catch (SQLException e) {
				e.printStackTrace();
				}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return null;
	}
	 
	//--------------Liste des competences------------------
	public ArrayList<Competence> listerCompetence() {
	
		java.sql.Connection connexion=Utilities.openConnection();

		Statement st=null;
		String sql = "select * from competence";
		System.out.println("sql : "+sql);

		try {
			System.out.println("connection etablie avec competence");
			st = (Statement) connexion.prepareStatement(sql);
		} catch (SQLException e1) {
			System.out.println("erreur execution de la requete");
			e1.printStackTrace();
		}
		ResultSet rs;
		try {
			rs = st.executeQuery(sql);
			ArrayList<Competence> competenceBdds=new ArrayList<Competence>();   
			try {
				//recuperation des données
//				System.out.println("booleen : "+rs.next());
				while(rs.next()) {
					int idCompet=rs.getInt("ID_COMPET");
					String sujet=rs.getString("SUJET");
					String description=rs.getString("DESCRIPTION");
					
					Competence lstCompetence = new Competence(idCompet,sujet,description);
					
					competenceBdds.add(lstCompetence);  //insere les données ds l'Array "users"
//					System.out.println("idcompet : "+competenceBdds.get(0).getSujet());
					};
					System.out.println("avant le return de competence");
					return competenceBdds;
			} catch (SQLException e) {
				e.printStackTrace();
				}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return null;

	}

	//--------------inserer questions --------------------------------------
	public int insertQuestion(String question, int idQuizz) {
			
			//connection etablit la communication avec la base de données
			java.sql.Connection connexion=Utilities.openConnection();
			
			//statement execute la requete
			Statement st=null;
			
			// requete
			String sql=" INSERT INTO `question`(`QUESTION`,`ID_QUIZZ`) VALUES (\""+question+"\","+idQuizz+")";
			
			System.out.println("sql: "+ sql);
			try {
				st = (Statement) connexion.prepareStatement(sql);
				System.out.println("connection etablie");
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			// execution de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
			ResultSet rs;
			int rsinsert;
			try {
				ResultSet res;
				rsinsert = st.executeUpdate(sql,PreparedStatement.RETURN_GENERATED_KEYS);// execute le sql +  cles retournees ds st
				res=st.getGeneratedKeys();  //mis les cles ds res
				res.next(); // lit la premiere cle de res
				int idQuest=res.getInt(1); //pas de while car une seule cle
				
				System.out.println("rsinsert "+rsinsert);
				System.out.println("ajout executee");
				return idQuest;
			} catch (SQLException e1) {
				System.out.println("erreur execution de la requete");
				e1.printStackTrace();
			}
		return -1;	
		};
	
	//--------------inserer reponses --------------------------------------
	public int insertReponse(ArrayList<Reponse> reponse, int idQuest, int numRepOk) {
//			public int insertReponse(ArrayList<Reponse> reponse, int idQuest, int numRepOk) {
			
			//connection etablit la communication avec la base de données
			java.sql.Connection connexion=Utilities.openConnection();
			
			//statement execute la requete
			Statement st=null;
			String texteReponse=null;
			// requete
			int idRepOk=-1;	
			int rsinsert;
			try {
				System.out.println("connection etablie");
				for (int i=0; i<reponse.size();i++) {
					if (!reponse.get(i).getTextRep().equals("")) {
						texteReponse = reponse.get(i).getTextRep();
						String sql=" INSERT INTO `reponse`(`TEXTREP`,`ID_QUEST`) VALUES (\""+texteReponse+"\","+idQuest+")";
						st = (Statement) connexion.prepareStatement(sql);
						System.out.println("sql: "+ sql);
						ResultSet res;
						rsinsert = st.executeUpdate(sql,PreparedStatement.RETURN_GENERATED_KEYS);// execute le sql +  cles retournees ds st
						res=st.getGeneratedKeys();  //mis les cles ds res
						res.next(); // lit la premiere cle de res
						System.out.println("valeur de i : "+i+" numrepOk : "+numRepOk);
						
						if (i+1==numRepOk) {
							
							idRepOk=res.getInt(1); //pas de while car une seule cle
							System.out.println("apres test rep ok "+res.getInt(1));
						}	
						System.out.println("rsinsert reponse "+i);
						System.out.println("ajout executee");
					}
				} //fin for
				System.out.println("afficher repok : "+ idRepOk);
				return idRepOk;
			} catch (SQLException e1) {
				System.out.println("erreur execution de la requete");
				e1.printStackTrace();
			}
		return -1;	
		}

	//--------------modifier questions --------------------------------------
	public  void updateQuestion(int idQuest, int idRepOk) {
			
			//connection etablit la communication avec la base de données
			java.sql.Connection connexion=Utilities.openConnection();
			
			//statement execute la requete
			Statement st=null;
			
			// requete
			String sql=" UPDATE `question` SET `ID_REP_OK`="+idRepOk+" WHERE `ID_QUEST`="+idQuest;
			System.out.println("sql: "+ sql);
			try {
				st = (Statement) connexion.prepareStatement(sql);
				System.out.println("connection etablie");
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			int rsUpdate;
			try {
				System.out.println(sql);
				rsUpdate = st.executeUpdate(sql);
				System.out.println("update question executee");
				
			} catch (SQLException e1) {
				System.out.println("erreur execution de la requete");
				e1.printStackTrace();
			}
		};

	//--------------Liste des quizz en fonction d'une competence choisie------------------
	public ArrayList<Quizz> listerQuizz(int idCompet) {
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		//statement execute la requete
		Statement st=null;
		
		//recupere les résultats de la requete
		String sql = "SELECT * FROM QUIZZ WHERE ID_COMPET="+idCompet;
		
		System.out.println("Mon id dans listerQuizz: "+idCompet);
		// execution de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
		ResultSet rs;
		try {
			st = (Statement) connexion.prepareStatement(sql);
			rs = st.executeQuery(sql);
			ArrayList<Quizz> quizzBdds=new ArrayList<Quizz>();
			//recuperation des données
			while(rs.next()) {
				System.out.println("Je suis dans la boucle while de listerquizz");
				int idQuizz=rs.getInt("ID_QUIZZ");
				String intitulQuizz=rs.getString("INTITUL_QUIZZ");
				
				Quizz unQuizz=new Quizz(idQuizz,intitulQuizz);
				
				quizzBdds.add(unQuizz);  //insere les données ds l'Array "users"
				};
				return quizzBdds; 
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			System.out.println("erreur execution de la requete");
			e1.printStackTrace();
		}
		return null;
	}
	
	//--------------Liste des question en fonction du quizz choisi------------------
	public ArrayList<Question> listerQuestion(int idQuizz) {
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		//statement execute la requete
		Statement st=null;
		
		//recupere les résultats de la requete
		String sql = "SELECT * FROM QUESTION WHERE ID_QUIZZ="+idQuizz;
		
		System.out.println("Mon id dans listerQuestion: "+idQuizz);
		// execution de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
		ResultSet rs;
		try {
			st = (Statement) connexion.prepareStatement(sql);
			rs = st.executeQuery(sql);
			ArrayList<Question> questionBdds=new ArrayList<Question>();
			//recuperation des données
			while(rs.next()) {
				System.out.println("Je suis dans la boucle while de listerquestion");
				int idQuest=rs.getInt("ID_QUEST");
				String question=rs.getString("QUESTION");
				Question uneQuestion=new Question(idQuest,question);
				questionBdds.add(uneQuestion);  //insere les données ds la liste des questions
				};
				return questionBdds; 
			} 
		catch (SQLException e) {
			System.out.println("erreur execution de la requete");
			e.printStackTrace();
			}
		return null;
	}
	
	//--------------Liste les reponses correspondant aux questions du quizz------------------
	public ArrayList<Reponse> listerReponse(ArrayList<Question> questionBdds) {
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		//statement execute la requete
		Statement st=null;
		int i=0;
		String sql=null;
		ArrayList<Reponse> reponseBdds=new ArrayList<Reponse>();
		for (i=0;i<questionBdds.size();i++) {
			try {
				sql = "SELECT * FROM REPONSE WHERE ID_QUEST="+questionBdds.get(i).getIdQuest();
				System.out.println("Mon id dans listerQuestion: "+questionBdds.get(i).getIdQuest());
				st = (Statement) connexion.prepareStatement(sql);
				// execution de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
				ResultSet rs;
				rs = st.executeQuery(sql);
				//recuperation des données
				while(rs.next()) {
					System.out.println("Je suis dans la boucle while de listerreponse");
					int idRep=rs.getInt("ID_REP");
					int idQuest=rs.getInt("ID_QUEST");
					String textRep=rs.getString("TEXTREP");
					
					Reponse uneReponse=new Reponse(idRep,idQuest,textRep);
					reponseBdds.add(uneReponse);  //insere les données
				};
			} catch (SQLException e1) {
				System.out.println("erreur execution de la requete");
				e1.printStackTrace();
				return null;
			}
		}
		return reponseBdds;
	}

	//--------------inserer le choix de l'utilisateur --------------------------------------
	public void insererChoixUser(int idQuizz,int idQuestion,int idRepDonne) {
			
			//connection etablit la communication avec la base de données
			java.sql.Connection connexion=Utilities.openConnection();
			
			//statement execute la requete
			Statement st=null;
			
			// requete
			String sql=" INSERT INTO `CHOIX`(`ID_QUEST`,`ID_QUIZZ`,ID_REP_DONNE,ID_PARCOURS) VALUES ("+idQuestion+","+idQuizz+","+idRepDonne+",null)";
			
			System.out.println("sql: "+ sql); 
			try {
				st = (Statement) connexion.prepareStatement(sql);
				System.out.println("connection etablie");
				
				// execution de la request  (executeUpdate)  et récupération du résultat de la request (ResultSet)
				ResultSet res;
				int rsinsert = st.executeUpdate(sql,PreparedStatement.RETURN_GENERATED_KEYS);// execute le sql +  cles retournees ds st
				res=st.getGeneratedKeys();  //mis les cles ds res
				res.next(); // lit la premiere cle de res
				System.out.println("ajout executee");
			} catch (SQLException e1) {
				System.out.println("erreur execution de la requete");
				e1.printStackTrace();
			}
		};

		//----------------calcul du score --------------------------
	public int verifierReponse(int idQuizz, int idQuest, int idRepDonne)
		{
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		
		//statement execute la requete
		Statement st=null;
		
		// requete
		String sql="SELECT ID_REP_OK FROM QUESTION WHERE ID_QUIZZ="+idQuizz+" AND ID_QUEST="+idQuest;
		System.out.println("sql: "+ sql); 
		int reponseJuste=-1;
		try {
			st = (Statement) connexion.prepareStatement(sql);
			System.out.println("connection etablie");
			
			// execution de la request  (executeUpdate)  et récupération du résultat de la request (ResultSet)
			ResultSet res;
			res = st.executeQuery(sql);// execute le sql +  cles retournees ds st
			
			//recuperation des données
			res.next();
			reponseJuste=res.getInt("ID_REP_OK");
//				while(res.next()) {
//					System.out.println("Je suis dans la boucle while de listerreponse");
//				reponseJuste=res.getInt("ID_REP_OK");
//				};
			
			System.out.println("reponse trouvee");
		} catch (SQLException e1) {
			System.out.println("erreur execution de la requete");
			e1.printStackTrace();
		}
		return reponseJuste;
	}

	//--------------inserer un nouveau parcours --------------------------------------
	public boolean insererParcours(int idUser,int idQuizz,String score) {
			
			//connection etablit la communication avec la base de données
			java.sql.Connection connexion=Utilities.openConnection();
			
			//statement execute la requete
			Statement st=null;
			
			// requete
			String sql=" INSERT INTO `PARCOURS`(`ID_USER`,`ID_QUIZZ`,SCORE) VALUES ("+idUser+","+idQuizz+",\""+score+"\")";
			
			System.out.println("sql: "+ sql); 
			try {
				st = (Statement) connexion.prepareStatement(sql);
				System.out.println("connection etablie");
				
				// execution de la request  (executeUpdate)  et récupération du résultat de la request (ResultSet)
//					ResultSet res;
				int rsinsert = st.executeUpdate(sql);// execute le sql 
				System.out.println("ajout du parcours executee");
				return true;
			} catch (SQLException e1) {
				System.out.println("erreur execution de la requete");
				e1.printStackTrace();
			}
			return false;
		};
		
	//--------------Liste des parcours pour un utilisateur------------------
	public ArrayList<Parcours> listerParcours(int idUserRecup) {
		//connection etablit la communication avec la base de données
		java.sql.Connection connexion=Utilities.openConnection();
		//statement execute la requete
		Statement st=null;
		
		//recupere les résultats de la requete
		String sql = "SELECT P.ID_PARCOURS,P.ID_USER,P.ID_QUIZZ,P.SCORE,Q.INTITUL_QUIZZ FROM PARCOURS P,QUIZZ Q WHERE P.ID_USER="+idUserRecup+" AND P.ID_QUIZZ=Q.ID_QUIZZ ORDER BY P.ID_QUIZZ";
		System.out.println("resuete sql : " +sql);
		try {
			st = (Statement) connexion.prepareStatement(sql);
		} catch (SQLException e1) {
			System.out.println("erreur execution de la requete");
			e1.printStackTrace();
		}
		// execution de la request  (executeQuery)  et récupération du résultat de la request (ResultSet)
		ResultSet rs;
		try {
			rs = st.executeQuery(sql);
			ArrayList<Parcours> ParcoursBdds=new ArrayList<Parcours>();
			try {
				//recuperation des données
				while(rs.next()) {
					int idParcours=rs.getInt("P.ID_PARCOURS");
					int idUser=rs.getInt("P.ID_USER");
					int idQuizz=rs.getInt("P.ID_QUIZZ");
					String score=rs.getString("P.SCORE");
					String intitulQuizz=rs.getString("Q.INTITUL_QUIZZ");
					
					Parcours unParcours=new Parcours(idParcours,idUser,idQuizz,score,intitulQuizz);
					
					ParcoursBdds.add(unParcours);  //insere les données ds l'Array 
					};
					return ParcoursBdds; 
			} catch (SQLException e) {
				e.printStackTrace();
				}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return null;
	}

		

}//fin UserBDD
