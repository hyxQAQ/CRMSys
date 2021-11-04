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
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
//验证地区名称
function checkName() {
	var uname = document.getElementById("nameId").value;
	var uname1 = document.getElementById("nameId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="地区名称不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证表单提交
function checkAll() {
	if(checkName()){
		return true;
	} else{
		alert("信息不完整，请填写地区名称!");
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
    <li>基础数据</li>
    <li>客户地区管理</li>
    <li>新建客户地区</li>
    </ul>
    </div>
    <div class="formbody">
    
    	<div class="formtitle"><span>基本信息</span></div>
    	<div class="clear"></div>
    	<form action="pages/district-add" method="post" onsubmit="return checkAll()">
    	<ul class="forminfo" style="margin-left: 10px;">
    		 <li><input name="" type="button" class="btn" value="返回" onclick="history.back();"/></li>
	     	 <li><input name="" type="submit" class="btn" value="保存"/></li>
	    </ul>
	    <div class="clear"></div>
        <table>
	    	<tr>
	    		<td class="dftr" style="width: 300px;">值：</td>
	    		<td ><input type="text" class="dfinput" name="district.dsName" id="nameId" onblur="checkName()"/><i id="nameId1">*必填项</i></td>
	    	</tr>
	    </table>
	    </form>
    </div>
</body>
</html>