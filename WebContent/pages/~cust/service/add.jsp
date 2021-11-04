<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
	String path = request.getContextPath();
	SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Date date = new Date();
	String strDate = sf.format(date);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
//验证客户名称
function checkManName() {
	var uname = document.getElementById("manId").value;
	var uname1 = document.getElementById("manId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="客户名称不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证服务类型
function checkType() {
	var uname = document.getElementById("typeId").value;
	var uname1 = document.getElementById("typeId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="服务类型不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证概要
function checkTitle() {
	var uname = document.getElementById("TitleId").value;
	var uname1 = document.getElementById("TitleId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="概要不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证服务请求
function checkRequest() {
	var uname = document.getElementById("requestId").value;
	var uname1 = document.getElementById("requestId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="服务请求不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}
//验证表单提交
function checkAll() {
	if(checkManName() && checkType() && checkTitle() && checkRequest()){
		return true;
	} else{
		alert("信息不完整，请核对!");
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
    <li>客户服务管理</li>
    <li>服务创建</li>
    </ul>
    </div>
    <div class="formbody">
    	<div class="formtitle"><span>基本信息</span></div>
    	<form action="pages/cService-doAdd" method="post" onsubmit="return checkAll()">
	    	<ul class="forminfo" style="margin-left: 10px;">
	    		 <li><input name="" type="submit" class="btn" value="保存"/></li>
	    		 <li><input name="" type="button" class="btn" value="返回" onclick="history.back();"/></li>	 
		    </ul>
	    <div class="clear"></div>
        <table>
	    	<tr>
	    		<td class="dftr">客户：</td>
	    		<td ><s:select list="clientManageList" listKey="manId" listValue="manName" name="manId" headerKey="" headerValue="-请选择-" id="manId" onblur="checkManName()"></s:select><i id="manId1">*必填项</i></td>
	    		<td class="dftr">服务类型：</td>
	    		<td>
					<%-- <select name="strType" id="typeId" onblur="checkType()">
						<option value="">-请选择-</option>
						<option value="咨询">咨询</option>
						<option value="投诉">投诉</option>
						<option value="建议">建议</option>
					</select><i id="typeId1">*必填项</i> --%>
				<s:select list="typeList" listKey="stId" listValue="stName" headerKey="" headerValue="请选择" name="serviceType.stId" id="typeId" onblur="checkType()"></s:select><i id="typeId1">*必填项</i>	
				</td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">概要：</td>
	    		<td ><input type="text" class="dfinput" name="clientService.svrTitle" id="TitleId" onblur="checkTitle()"/><i id="TitleId1">*必填项</i></td>
	    		<td class="dftr">状态：</td>
	    		<td ><input type="text" class="dfinput" readonly="readonly" value="新创建"/><i>*</i></td>
	    	</tr>	    	
	    	<tr>
	    		<td class="dftr" >创建人：</td>
	    		<td ><input type="text" name="clientService.svrCreateName" class="dfinput" readonly="readonly" value="${session.sysUser.usrName}"/><i>*</i></td>
	    		<td class="dftr">创建时间：</td>
	    		<td ><input name="strDate" readonly="readonly" value="<%=strDate %>" class="dfinput" /><i>*</i></td>
	    	</tr>   	
	    	<tr>
	    		<td class="dftr">服务请求：</td>
	    		<td ><textarea cols="" rows="" class="textinput" style="OVERFLOW:visible;" name="clientService.svrRequest" id="requestId" onblur="checkRequest()"></textarea><i id="requestId1">*必填项</i></td>
	    	</tr>
	    </table>
	    </form>
    </div>
</body>
</html>