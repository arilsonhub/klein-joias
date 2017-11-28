<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Klein jóias - Contato</title>
<!--Layout-->
<link href="../css/css4.css" rel="stylesheet" type="text/css" />
<!-- javascript do menu -->
<script language="JavaScript" src="../js/jquery.js" type="text/javascript"></script>
<script language="JavaScript" src="../js/jquery.validate.js" type="text/javascript"></script>
<script type="text/javascript" src="../js/javascript.js"></script>
<script type="text/javascript" src="../js/http_request.js"></script>
<script type="text/javascript" src="../js/ValidarContato.js"></script>
<script type="text/javascript" src="../js/mascaras.js"></script>
<!-- Favicon -->
<link rel="shortcut icon" href="../img/favicon.ico" />
</head>
<body>
<div id="principal">
  <div id="topo"></div>
    <div id="conteudo">
          <jsp:include page="../inc/menu.jsp" flush="true"/>
      <div id="texto">
      <form action="javascript:send_request('InserirContato.jsp','msg_contatos','frmContatos','POST');" id="frmContatos">
        <table width="100%" border="0" align="right" cellpadding="2" cellspacing="2">
          <tr>
            <td colspan="3" align="center"><div id="msg_contatos" class="msg"></div></td>
          </tr>
          <tr>
            <td width="182"><div align="right">Nome:</div></td>
            <td><input type="text" name="nome" id="nome" onkeypress="return Onlychars(event);" /></td>
            <td><label for="nome"></label></td>
          </tr>
          <tr>
            <td><div align="right">E-mail:</div></td>
            <td><input type="text" name="email" id="email" /></td>
            <td><label for="email"></label></td>
          </tr>
          <tr>
            <td><div align="right">Endereco:</div></td>
            <td><input type="text" name="endereco" id="endereco" /></td>
            <td><label for="endereco"></label></td>
          </tr>
          <tr>
            <td><div align="right">Telefone:</div></td>
            <td><input type="text" name="telefone" id="telefone" onkeypress="mascara(this,soTelefone);" maxlength="14" /></td>
            <td><label for="telefone"></label></td>
          </tr>
          <tr>
            <td valign="top"><div align="right">Mensagem:</div></td>
            <td colspan="2"><textarea name="msg" id="msg" cols="45" rows="5"></textarea></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td width="181"><input type="submit" name="btn_enviar" id="btn_enviar" value="Enviar" />
              &nbsp;&nbsp;<input type="reset" name="btn_limpar" id="button" value="Limpar" onclick="document.getElementById('msg_contatos').innerHTML = '';" /></td>
            <td width="389" align="left"><label for="msg"></label></td>
          </tr>
        </table>
      <input type="hidden" name="acao" value="cadastrar_contato" />  
      </form>
      </div>
      <div id="rodape">Desenvolvido por Connect System Consultoria LTDA.<br />Klein jóias - Mão de obra Especializada</div>
    </div>
</div>
</body>
</html>