package controllers;

//Importações referentes a Exceções
import java.sql.SQLException;
//Importações referentes a Base de dados
import connection.Database;
//Importações referentes a Constantes
import config.Constantes;

/**
 * Servlet implementation class InserirContato
 */
public class InserirContato
{   	
	//Esta atributo faz referência as constantes
	private Constantes constantes = new Constantes();   
	
	//Construtor da Classe
	public InserirContato(String[] args){
		//Tratando a requisição POST
		this.doPost(args);
	}

	/**
	 * Este método processa a requisição POST
	 */
	public void doPost(String[] args){  
		
	  //Instanciamos a conexão com o banco de dados	
	  Database conn = new Database();
	  //Conectamos ao banco de dados
	  conn.connect();
	  
	  //Montamos a Query
	  String sql = "INSERT INTO "+constantes.table_contatos+" (nome,email,endereco,telefone,mensagem)VALUES(1%,2%,%3,%4,%5)";
	  
	  //Parâmetros da Query
	  sql.replace("1%",args[0]);
	  sql.replace("2%",args[1]);
	  sql.replace("3%",args[2]);
	  sql.replace("4%",args[3]);
	  sql.replace("5%",args[4]);
	  
		  try {
			//Executamos a Query  
			conn.update(sql);						              
			//Encerra a conexão
			conn.CloseConnection();
		  }     
		  		catch (SQLException e) {
				//Mensagem de erro		  			
				System.out.println(e.getMessage());				  
				  try {
					  //Encerra a conexão
					  conn.CloseConnection();
				  } catch (SQLException e1) {					
					e1.printStackTrace();
				  }
		   }		
	}
}