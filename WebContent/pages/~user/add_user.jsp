<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="/struts-tags" prefix="s" %>
    <%
		String path = request.getContextPath();
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="/CRMSys/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
//验证用户名
function checkName() {
	var uname = document.getElementById("nameId").value;
	var uname1 = document.getElementById("nameId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="用户名不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证角色
function checkroleName() {
	var uname = document.getElementById("roleId").value;
	var uname1 = document.getElementById("roleId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="角色名不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}
//验证密码
function checkPass() {
	var uname = document.getElementById("psId").value;
	var uname1 = document.getElementById("psId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="密码不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证确定密码
function checkpassWord() {
	var paid = document.getElementById("psId").value;
	var uname = document.getElementById("passId").value;
	var uname1 = document.getElementById("passId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="密码不能为空";
		return false;
	} else if (paid != uname) {
		uname1.innerHTML="密码不一致，请重新输入";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}
//验证表单提交
function checkAll() {
	if(checkName() && checkroleName() && checkPass() && checkpassWord()){
		return true;
	} else{
		alert("信息不完整，请填写用户信息!");
		return false;
	} 
} 
</script>
<style type="text/css">
li { margin-left: 5px;}
</style>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>权限管理</li>
    <li>用户管理</li>
    <li>添加用户</li>
    </ul>
    </div>
    <div class="formbody">
    
    	<div class="formtitle"><span>基本信息</span></div>
    	<div class="clear"></div>
    	<form action="pages/sUser-doAdd" method="post" onsubmit="return checkAll()">
    	<ul class="forminfo" style="margin-left: 20px;">
	     	 <li><input name="" type="submit" class="btn" value="保存"/></li>
	     	 <li><input name="" type="button" class="btn" value="返回" onclick="history.back();"/></li>
	    </ul>
	    <div class="clear"></div>
        <table>
	    	<tr>
	    		<td class="dftr">用户名：</td>
	    		<td><input name="sysUser.usrName" type="text" class="dfinput" id="nameId" onblur="checkName()"><i id="nameId1">*必填项</i></td>
	    		<td class="dftr">角色：</td>
	    		<td ><s:select id="roleId"  onblur="checkroleName()" list="request.sysRoleList" name="rolenameId" listKey="roleId" listValue="roleName"  class="dfinput2" headerKey="" headerValue="请选择">
	    		</s:select><i id="roleId1">*必填项</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">密码：</td>
	    		<td><input name="sysUser.usrPassword" type="password" class="dfinput" id="psId" onblur="checkPass()"><i id="psId1">*必填项</i></td>
	    		<td class="dftr">确认密码：</td>
	    		<td><input  type="password" class="dfinput" id="passId" onblur="checkpassWord()"><i id="passId1">*必填项</i></td>
	    	</tr>
	    </table>
	    </form>
    </div>

</body>
</html>