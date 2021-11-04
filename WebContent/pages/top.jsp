<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<title>客户关系管理系统</title>
<script type="text/javascript">
</script>
</head>
<body style="background:url(<%=path %>/images/top/topbg.jpg) repeat-x;">
	<div class="topleft">
    	<a href="main.jsp" target="_parent"><img src="<%=path %>/images/top/logo.jpg" title="系统首页" /></a>
    </div>
    <div class="topright">    
	    <ul>
	    <li><span><img src="<%=path %>/images/top/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
	    <li><a href="#">关于</a></li>
	    <li><a href="<%=path %>/pages/exit.jsp" target="_parent">退出</a></li>
	    </ul>
	    <div class="user">
		    <span><s:property value="#session.sysUser.usrName"/></span>
		    <i>(<s:property value="#session.sysRole.roleName"/>)</i>
	    </div> 
    </div>   
</body>
</html>