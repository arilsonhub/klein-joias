<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%
//Verificamos se o parâmetro criterio foi informado
if(!request.getParameter("criterio").isEmpty()){

	//Variável que define o critério de pesquisa
	String criterio = null;
	
//Definir o critério de pesquisa
if(request.getParameter("criterio").equals("0")){
	
	criterio = "?criterio=0&descricao_txt="+request.getParameter("descricao_txt");
	
}else if(request.getParameter("criterio").equals("1")){
	
	criterio = "?criterio=1&CatId="+request.getParameter("categoria");      	
}else{
	
	criterio = "?criterio=2&preco1_txt="+request.getParameter("preco1_txt")+"&preco2="+request.getParameter("preco2_txt");
}
	
%>
<script src="../Scripts/swfobject_modified.js" type="text/javascript"></script>

<object id="FlashID" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="760" height="750">
  <param name="movie" value="../src/duplicate.swf<% out.println(criterio); %>" />
  <param name="quality" value="high" />
  <param name="wmode" value="transparent" />
  <param name="swfversion" value="8.0.35.0" />
  <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
  <param name="expressinstall" value="../Scripts/expressInstall.swf" />
  <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
  <!--[if !IE]>-->
  <object type="application/x-shockwave-flash" data="../src/duplicate.swf<% out.println(criterio); %>" width="760" height="750">
    <!--<![endif]-->
    <param name="quality" value="high" />
    <param name="movie" value="../src/duplicate.swf<% out.println(criterio); %>" />
    <param name="wmode" value="transparent" />
    <param name="swfversion" value="8.0.35.0" />
    <param name="expressinstall" value="../Scripts/expressInstall.swf" />
    <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
    <div>
      <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
      <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
    </div>
    <!--[if !IE]>-->
  </object>
  <!--<![endif]-->
</object>
<%
}
%>
<script type="text/javascript">
swfobject.registerObject("FlashID");
</script>
