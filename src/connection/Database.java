package connection;

import java.sql.Connection;
import java.sql.DriverManager;  
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;  
  
/** 
* 
* @author Arilson Gonçalves da Rosa
*/  
  
/**
 * @author Empresa Stack
 *
 */
public class Database 
{  
	private Connection conn = null;
  
    /**
     *Este método é responsável por conectar na base de dados 
     */
    public void connect() 
    {  
     String url = "jdbc:postgresql://localhost:5432/klein_joias"; 
     String username = "admin";    
     String password = "12345678";  
     String driver = "org.postgresql.Driver";     
  
        try  
        {  
        	Class.forName(driver);  
        	this.conn = DriverManager.getConnection( url, username, password );  
  
            System.out.println("Conexão realizada com sucesso.");  
  
        }  
        catch (ClassNotFoundException ex)  
        {  
            System.err.print(ex.getMessage());  
        }   
        catch (SQLException e)  
        {  
            System.err.print(e.getMessage());  
        }  
    }      
    
    
    /**Este método é responsável por executar atualizações na base da dados(INSERT,UPDATE)
     * @param sql
     * @throws SQLException
     */
    public void update(String sql) throws SQLException{
    	
    	PreparedStatement st = this.conn.prepareStatement(sql);    
    	st.executeUpdate(sql);
    }
    
    /**Este método é responsável por executar consultas no base de dados
     * @param sql
     * @return - Retorna um conjunto de resultados referente a consulta realizada
     * @throws SQLException
     */
    public ResultSet ExecuteQuery(String sql) throws SQLException{
    	
    	PreparedStatement st = conn.prepareStatement(sql);    	  
    	ResultSet rs = st.executeQuery(sql);  
    	return rs;
    }
    
    /**Este método encerra a conexão com a base de dados atualmente aberta
     * @throws SQLException
     */
    public void CloseConnection() throws SQLException{
    	this.conn.close();
    }
}  
