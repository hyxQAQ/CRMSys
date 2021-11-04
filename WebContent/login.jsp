<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CRM系统登录页面</title>
<link rel="stylesheet" href="<%=path %>/css/User_Login.css" />
<script type="text/javascript" >
//验证用户名
function checkUserName() {
	var uname = document.getElementById("TxtUserName").value;
	var msg = document.getElementById("msg");
	if (uname == null || uname == "") {
		msg.innerHTML="用户名不能为空";
		return false;
	} else {
		msg.innerHTML="";
		return true;
	}
}
//验证密码
function checkPassword() {
	var password = document.getElementById("TxtPassword").value;
	var msg = document.getElementById("msg");
	if (password == null || password == "") {
		msg.innerHTML="密码不能为空";
		return false;
	} else {
		msg.innerHTML="";
		return true;
	}
}
//验证表单提交
function checkAll() {
	var uname = document.getElementById("TxtUserName");
	if (!checkUserName()) {
		uname.focus();
		return false;
	} else if (!checkPassword) {
		uname.focus();
		return false;
	} else {
		return true;
	}
}
</script>

</head>

<body id="userlogin_body">
<div id="user_middle"><img src="<%=path %>/images/login/logo.jpg"></img></div>
<form action="pages/sUser-login.action" method="post" onsubmit="return checkAll()">
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
				      name="sysUser.usrName" onblur="checkUserName()" /></li>
				   </ul>
			   	   <ul>
				      <li class="user_main_text">密 码： </li>
				      <li class="user_main_input"><input class="TxtPasswordCssClass" id="TxtPassword"
				      type="password" name="sysUser.usrPassword" onblur="checkPassword()" /> </li>
			  	  </ul>
				    <ul>
				      <li style="color: red;"><s:property value="msg"/> &nbsp;</li>
				      <li id="msg" style="color: red;"></li>
				      <li style="color: red;"><s:actionmessage /></li>
				    </ul>
	  			</div>
	  			
	    	</li>
		    <li class="user_main_r">
			    <input class="IbtnEnterCssClass" id="IbtnEnter" 
			    style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
			    type="image" src="<%=path %>/images/login/user_botton.gif" /> 
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