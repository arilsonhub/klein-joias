<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>   

<%@include file="../src/connection/Database.jsp" %>
<% 
if(request.getParameter("acao").equals("cadastrar_contato")){
	
	String url = "jdbc:postgresql://localhost:5432/klein_joias"; 
	String username = "admin";    
	String password = "12345678";  
	String driver = "org.postgresql.Driver";	
    
  //Montamos a Query
  String sql = "INSERT INTO CONTATOS (nome,email,endereco,telefone,mensagem)VALUES('1%','2%','3%','4%','5%')";
	  
	  //Parâmetros da Query
	  sql = sql.replace("1%",request.getParameter("nome"));
	  sql = sql.replace("2%",request.getParameter("email"));
	  sql = sql.replace("3%",request.getParameter("endereco"));
	  sql = sql.replace("4%",request.getParameter("telefone"));
	  sql = sql.replace("5%",request.getParameter("msg"));      
	  
       try  
       {
       Class.forName(driver);  
       Connection conn = DriverManager.getConnection(url,username,password);
 
      //Executamos a Query
      Statement st = conn.createStatement();
      st.executeUpdate(sql);						              
	  //Encerra a conexão
	  conn.close(); 
       }  
       catch (ClassNotFoundException ex)  
       {  
           System.err.print(ex.getMessage());  
       }   
       catch (SQLException ex)  
       {  
           System.err.print(ex.getMessage());  
       } 
       
//Mensagem de Confirmação ao usuário
out.println("Mensagem Enviada com Sucesso");
}
%>    