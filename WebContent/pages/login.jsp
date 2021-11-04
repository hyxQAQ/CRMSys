<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CRM系统登录页面</title>
<link rel="stylesheet" href="<%=path %>/css/User_Login.css" />
<script type="text/javascript" src=""></script>

</head>

<body id="userlogin_body">
<div id="user_middle"><img src="<%=path %>/images/login/logo.jpg"></img></div>
<form action="main.jsp" method="post">
	<div id="user_login">
	<dl>
	  <dd id="user_top">
		  <ul>
		    <li class="user_top_l"></li>
		    <li class="user_top_c"></li>
		    <li class="user_top_r"></li>
		  </ul>
	   </dd>
	   <dd id="user_main">
		  <ul>
		    <li class="user_main_l"></li>
		    <li class="user_main_c">
			    <div class="user_main_box">
				    <ul>
				      <li class="user_main_text">用户名： </li>
				      <li class="user_main_input"><input type="text" class="TxtUserNameCssClass" id="TxtUserName" 
				      name="TxtUserName" /></li>
				   </ul>
			   	   <ul>
				      <li class="user_main_text">密 码： </li>
				      <li class="user_main_input"><input class="TxtPasswordCssClass" id="TxtPassword "
				      type="password" name="TxtPassword" /> </li>
			  	  </ul>
				    <ul>
				      <li class="user_main_text">Cookie： </li>
				      <li class="user_main_input"><select id="DropExpiration" name="DropExpiration"> 
				        <option value="None" selected="selected">不保存</option> <option value="Day">保存一天</option> 
				        <option value="Month">保存一月</option> <option 
				      value="Year">保存一年</option></select> </li>
				    </ul>
	  			</div>
	    	</li>
		    <li class="user_main_r">
			    <input class="IbtnEnterCssClass" id="IbtnEnter" 
			    style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
			    type="image" src="<%=path %>/images/login/user_botton.gif" name="IbtnEnter" 
			    onclick="javascript:window.location='/main.jsp'"/> 
		    </li>
	   </ul>
	  </dd>
	  <dd id="user_bottom">
	  	<ul>
		    <li class="user_bottom_l"></li>
		    <li class="user_bottom_c"><span style="MARGIN-TOP: 40px">&copy; 2015 第四组 。。。。。。。。。。 。</span> </li>
		    <li class="user_bottom_r"></li>
	    </ul>
	  </dd>
	</dl>
	</div>
</form>
<span id="ValrUserName" style="DISPLAY: none; COLOR: red"></span>
<span id="ValrPassword" style="DISPLAY: none; COLOR: red"></span>
<span id="ValrValidateCode" style="DISPLAY: none; COLOR: red"></span>
<div id="ValidationSummary1" style="DISPLAY: none; COLOR: red"></div>
<div></div>
</body>
</html>