<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<title>Insert title here</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	//地点失去焦点事件
function activitiesPlace() {
	var atvPlace = document.getElementById("atvPlace").value;
	var catvPlace = document.getElementById("catvPlace");
	if (atvPlace == null || atvPlace == "") {
		catvPlace.innerHTML="地点不可以为空！";
		return false;
	} else {
		catvPlace.innerHTML="*";
		return true;
	}
}
//概要失去焦点事件
function activitiesTitle() {
	var atvPlace = document.getElementById("atvTitle").value;
	var catvPlace = document.getElementById("catvTitle");
	if (atvPlace == null || atvPlace == "") {
		catvPlace.innerHTML="概要不可以为空！";
		return false;
	} else {
		catvPlace.innerHTML="*";
		return true;
	}
}
//备注失去焦点事件
function activitiesComment() {
	var atvPlace = document.getElementById("atvComment").value;
	var catvPlace = document.getElementById("catvComment");
	if (atvPlace == null || atvPlace == "") {
		catvPlace.innerHTML="备注不可以为空！";
		return false;
	} else {
		catvPlace.innerHTML="*";
		return true;
	}
}
//详细信息失去焦点事件
function activitiesDesc() {
	var atvPlace = document.getElementById("atvDesc").value;
	var catvPlace = document.getElementById("catvDesc");
	if (atvPlace == null || atvPlace == "") {
		catvPlace.innerHTML="详细信息不可以为空！";
		return false;
	} else {
		catvPlace.innerHTML="*";
		return true;
	}
}
//验证表单提交
function checkAll() {
	if(activitiesDesc() && activitiesComment() &&activitiesTitle() && activitiesPlace()){
		return true;
	} else{
		alert("信息不完整，请核对!");
		return false;
	} }
</script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>客户管理</li>
    <li>客户信息管理</li>
    <li>客户信息</li>
    <li>交往记录</li>
    <li>修改交往记录</li>
    </ul>
    </div>
    
    <div class="formbody">
    
    	<div class="formtitle"><span>基本信息</span></div>
    	<form action="pages/cActivity-Update" method="post" onsubmit="return checkAll();">
        <table>
	    	<tr>
	    		<td class="dftr">时间：</td>
	    		<td><input name="clientActivity.atvTime"  readonly="readonly"  type="text" class="dfinput" value="${ clientActivity.atvTime}" ><i>*必填项 </i></td>
	    		<td class="dftr">地点：</td>
	    		<td><input name="clientActivity.atvPlace"  type="text" class="dfinput" value="${ clientActivity.atvPlace}" id="atvPlace"  onBlur="activitiesPlace()"><i id="catvPlace">*必填项 </i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">概要：</td>
	    		<td><input name="clientActivity.atvTitle" type="text" class="dfinput" value="${ clientActivity.atvTitle}" id="atvTitle" onBlur="activitiesTitle()"><i id="catvTitle" >*必填项</i></td>
	    		<td class="dftr">备注：</td>
	    		<td><input name="clientActivity.atvComment" type="text" class="dfinput" value="${ clientActivity.atvComment}" id="atvComment" onBlur="activitiesComment()"><i id="catvComment">*必填项</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">详细信息</td>
	    		<td colspan="3"><textarea name="clientActivity.atvDesc" cols="" rows="" class="textinput"  id="atvDesc" onBlur="activitiesDesc()"> ${ clientActivity.atvDesc}</textarea><i id="catvDesc">*必填项</i></td>
	    	</tr>
	    	<tr>
	    		<td><input type="hidden" name="clientActivity.atvId" value="${clientActivity.atvId}" />
	    			<input type="hidden" name="clientManage.manId" value="${clientActivity.clientManage.manId }" />
	    		</td>
	    	</tr>
	    </table>
	     <ul class="forminfo">
	     	 <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
	     	 <li><label>&nbsp;</label><input name="" type="button" class="btn" value="返回" onclick="history.back();"/></li>
	     </ul>
	     </form>
    </div>

</body>
</html>