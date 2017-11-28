<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Klein jóias - Catálogo</title>
<!--Layout-->
<link href="../css/css4.css" rel="stylesheet" type="text/css" />
<!-- javascript do menu -->
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/javascript.js"></script>
<script type="text/javascript" src="../js/http_request.js"></script>
<!-- Favicon -->
<link rel="shortcut icon" href="../img/favicon.ico" />
</head>
<body>
<div id="principal">
  <div id="topo"></div>
    <div id="conteudo">      
      <jsp:include page="../inc/menu.jsp" flush="true"/>
        
      <div id="texto">      

       <table width="100%" border="0" cellpadding="1" cellspacing="1">
       <tr>
       	<td><font size="2">Escolha uma das categorias abaixo e a quantidade de imagens por página.</font></td>
       </tr>
  <tr>
    <td><input type="radio" value="categoria" name="opcao" id="categoria2" onClick="document.getElementById('txt_categoria').style.display = 'block'; document.getElementById('txt_valores').style.display = 'none';  document.getElementById('txt_descricao').style.display = 'none';"/>
      Categoria
        <input type="radio" value="Valor" name="opcao" id="Valor2" onClick="document.getElementById('txt_categoria').style.display = 'none'; document.getElementById('txt_valores').style.display = 'block';  document.getElementById('txt_descricao').style.display = 'none';"/>
      Valor
      <input type="radio" value="descricao" name="opcao" id="Valor" onClick="document.getElementById('txt_categoria').style.display = 'none'; document.getElementById('txt_valores').style.display = 'none';  document.getElementById('txt_descricao').style.display = 'block';"/>
      Descrição </td>
    </tr>
  <tr>
    <td height="52">
    <div id="txt_descricao" style="display:none;">
       Digite as informações necessárias:
       <form id="frmdescricao" action="javascript:send_request('VisualizarCatalogo.jsp','mostrar_catalogo','frmdescricao','POST');">
       		<input name="descricao_txt" type="text" />
            <input name="criterio" type="hidden" value="0" />
            <input name="Enviar" type="submit" value="Enviar" />
       </form>
      </div>
      
              <div id="txt_categoria" style="display:none;">  
        	Categoria
			  <form id="frmCategoria" action="javascript:send_request('VisualizarCatalogo.jsp','mostrar_catalogo','frmCategoria','POST');">			  
              <select name="categoria" id="categoria">
                <%      
				   try  
				   {				   	   
				   //Conectamos a base de dados	   
				   Class.forName("org.postgresql.Driver");  
				   Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/klein_joias","admin","12345678");			 
				  //Criamos o Statement  
				  Statement st = conn.createStatement();
				  //Executamos a Query e armazenamos em um RecordSet
				  ResultSet rs = st.executeQuery("SELECT * FROM CATEGORIAS");
				  //Percorremos os registros da consulta
				  while (rs.next()) {  
					  %>
					  <option value="<% out.println(rs.getString("id")); %>"><% out.println(rs.getString("nome")); %></option>
					  <%       
		          }  
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
	              %>                  
                </select>
                <input name="criterio" type="hidden" value="1" />              
                <input name="Enviar" type="submit" value="Enviar" />
              </form>
        </div>
        
       <div id="txt_valores" style="display:none;">
       Digite o valor Procurado:
       <form id="frmPreco" action="javascript:send_request('VisualizarCatalogo.jsp','mostrar_catalogo','frmPreco','POST');">
   	   		<input name="preco1_txt" type="text" size="10" /> | <input name="preco2_txt" type="text" size="10" />
            <input name="criterio" type="hidden" value="2" /> 
            <input name="Enviar" type="submit" value="Enviar" />
       </form>
       </div></td>
    </tr>
</table>
<div align="center" id="mostrar_catalogo"></div>
</div>
</div>
      <div id="rodape">Desenvolvido por Connect System Consultoria LTDA.<br />
      Klein jóias - Mão de obra Especializada</div>
    </div>
</body>
</html>