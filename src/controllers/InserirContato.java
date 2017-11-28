package controllers;

//Importa��es referentes a Exce��es
import java.sql.SQLException;
//Importa��es referentes a Base de dados
import connection.Database;
//Importa��es referentes a Constantes
import config.Constantes;

/**
 * Servlet implementation class InserirContato
 */
public class InserirContato
{   	
	//Esta atributo faz refer�ncia as constantes
	private Constantes constantes = new Constantes();   
	
	//Construtor da Classe
	public InserirContato(String[] args){
		//Tratando a requisi��o POST
		this.doPost(args);
	}

	/**
	 * Este m�todo processa a requisi��o POST
	 */
	public void doPost(String[] args){  
		
	  //Instanciamos a conex�o com o banco de dados	
	  Database conn = new Database();
	  //Conectamos ao banco de dados
	  conn.connect();
	  
	  //Montamos a Query
	  String sql = "INSERT INTO "+constantes.table_contatos+" (nome,email,endereco,telefone,mensagem)VALUES(1%,2%,%3,%4,%5)";
	  
	  //Par�metros da Query
	  sql.replace("1%",args[0]);
	  sql.replace("2%",args[1]);
	  sql.replace("3%",args[2]);
	  sql.replace("4%",args[3]);
	  sql.replace("5%",args[4]);
	  
		  try {
			//Executamos a Query  
			conn.update(sql);						              
			//Encerra a conex�o
			conn.CloseConnection();
		  }     
		  		catch (SQLException e) {
				//Mensagem de erro		  			
				System.out.println(e.getMessage());				  
				  try {
					  //Encerra a conex�o
					  conn.CloseConnection();
				  } catch (SQLException e1) {					
					e1.printStackTrace();
				  }
		   }		
	}
}