<%@ page contentType="text/xml; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
//Verificamos se o parâmetro criterio foi informado
if(!request.getParameter("criterio").isEmpty()){

	//Variável que define o critério de pesquisa
	String criterio = null;
	
//Definir o critério de pesquisa
if(request.getParameter("criterio").equals("0")){
	
	criterio = "G.descricao like '%"+request.getParameter("descricao_txt")+"%'";
	
}else if(request.getParameter("criterio").equals("1")){
	
	criterio = "G.id_categoria = "+request.getParameter("CatId");      	
}else{
	
	criterio = "G.preco between '"+request.getParameter("preco1_txt")+"' and '"+request.getParameter("preco2_txt")+"'";
}	

		try  
		{				   	   
		//Conectamos a base de dados	   
		Class.forName("org.postgresql.Driver");  
		Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/klein_joias","admin","12345678");			 
		//Criamos o Statement  
		Statement st = conn.createStatement();
		//Executamos a Query e armazenamos em um RecordSet
		ResultSet rs = st.executeQuery("SELECT G.*,C.nome as nome_categoria FROM GALERIA_FOTOS AS G,CATEGORIAS AS C WHERE "+criterio+" AND G.id_categoria = C.id");
				
		//Iniciamos a Geração do XML
		String xml = "<?xml version='1.0' encoding='utf-8'?>\n\n";
		//Nó inicial
		xml += "<galeria imgPath='Userfiles/photos/' thumbnailPath='Userfiles/thumbnails/'>";
		
		//Percorremos os registros da consulta
		while (rs.next()) { 
		    //Geramos o conteúdo do XML   
			xml += "<conteudo id='"+rs.getString("id")+"' texto='"+rs.getString("nome")+"' img='"+rs.getString("img")+"' width='"+rs.getString("width")+"' height='"+rs.getString("height")+"' descricao='"+rs.getString("descricao")+"' preco='"+rs.getString("preco")+"' categoria='"+rs.getString("nome_categoria")+"' />";
		}
		//Nó final
		xml += "</galeria>";
		//Escreve o XML no Browser
		response.getWriter().write(xml.toString());
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
}
%>