<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Klein jóias - A Empresa</title>
<!--Layout-->
<link href="../css/css4.css" rel="stylesheet" type="text/css" />
<!-- javascript do menu -->
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/javascript.js"></script>
<!-- Favicon -->
<link rel="shortcut icon" href="../img/favicon.ico" />
</head>
<body>
<div id="principal">
  <div id="topo"></div>
    <div id="conteudo">      
      <jsp:include page="../inc/menu.jsp" flush="true"/>                
        <div id="texto">
          <p class="texto">Missão
          <hr id="linha" width="100%" color="#FFFFFF" noshade="noshade"/>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum a   faucibus lacus. Class aptent taciti sociosqu ad litora torquent per   conubia nostra, per inceptos himenaeos. Aenean lobortis ipsum et augue   placerat commodo. Fusce eget urna mauris. In in lacus ac sapien   condimentum faucibus. </p>
          <p class="texto">Visão
          <hr id="linha" width="100%" color="#FFFFFF" noshade="noshade"/>
          Class aptent taciti sociosqu ad litora torquent per conubia nostra, per   inceptos himenaeos. Aliquam et massa vitae nisi vulputate dignissim.   Vestibulum dolor magna, venenatis eu congue ac, consequat eget odio.   Pellentesque in ipsum eu quam convallis laoreet. </p>
          <p class="texto">Quem Somos
          <hr id="linha" width="100%" color="#FFFFFF" noshade="noshade"/>
          Aenean ante diam, semper et accumsan at, gravida nec enim. Suspendisse   potenti. Fusce et velit nulla, nec tempus nibh. In et tellus purus. Ut   nec quam ac eros hendrerit sagittis. Sed quis nisi vitae nisi vehicula   dictum id id est. Donec eu velit nunc. Mauris suscipit velit vel magna   porta lobortis.</p>
        </div>
        
        
        
      <div id="rodape" align="right">
		Desenvolvido por Connect System Consultoria LTDA.<br />
        Klein jóias - Mão de obra Especializada
      </div>
    </div>
</div>
</body>
</html>

