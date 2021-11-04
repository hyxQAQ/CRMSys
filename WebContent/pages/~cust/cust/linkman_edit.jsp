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
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
//验证姓名
function checklkmName() {
	var uname = document.getElementById("nameId").value;
	var uname1 = document.getElementById("nameId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="姓名不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证职位
function checklkmPostion() {
	var uname = document.getElementById("psId").value;
	var uname1 = document.getElementById("psId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="职位不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证办公电话
function checklkmTel() {
	var uname = document.getElementById("telId").value;
	var uname1 = document.getElementById("telId1");
	var phone=/^(0(10|2[1-3]|[3-9]\d{2}))?[1-9]\d{6,7}$/;
	if(uname == null || uname == ""){
		uname1.innerHTML="办公电话不能为空";
		return false;
	}else if (phone.test(uname)==false) {
		uname1.innerHTML="办公电话格式不正确";
		return false;
	}  else {
		uname1.innerHTML="*";
		return true;
	}
}
 //验证表单提交
function checkAll() {
	if(checklkmName() && checklkmPostion() && checklkmTel()){
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
    <li>客户管理</li>
    <li>客户信息管理</li>
    <li>客户信息</li>
    <li>联系人</li>
    <li>编辑联系人</li>
    </ul>
    </div>
    <form action="pages/cLinkMan-update" method="post" onsubmit="return checkAll()">
    <div class="formbody">
    	<div class="formtitle"><span>基本信息</span></div>
    	<div class="clear"></div>
    	<ul class="forminfo" style="margin-left: 20px;">
	     	 <li><input name="" type="submit" class="btn" value="保存"/></li>
	     	 <li><input name="" type="button" class="btn" value="返回" onclick="history.back();"/></li>
	     </ul>
	    <div class="clear"></div>
        <table>
	    	<tr>
	    		<td class="dftr">姓名：</td>
	    		<td><input name="clientLinkman.lkmName" value="${clientLinkman.lkmName }" type="text" class="dfinput" id="nameId" onblur="checklkmName()"><i id="nameId1">*</i></td>
	    		<td class="dftr">性别：</td>
	    		<td ><label>&nbsp;</label>
	    		<s:radio list="request.sexList" listKey="sexId" listValue="gender" name="clientLinkman.lkmSex" value="clientLinkman.lkmSex"></s:radio>
	    		<i>*</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">职位：</td>
	    		<td><input name="clientLinkman.lkmPostion" value="${clientLinkman.lkmPostion }" type="text" class="dfinput" id="psId" onblur="checklkmPostion()"><i id="psId1">*</i></td>
	    		<td class="dftr">办公电话：</td>
	    		<td><input name="clientLinkman.lkmTel" value="${clientLinkman.lkmTel }" type="text" class="dfinput" id="telId" onblur="checklkmTel()"><i id="telId1">*输入8位数字</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">手机：</td>
	    		<td><input name="clientLinkman.lkmMobile" value="${clientLinkman.lkmMobile }" type="text" class="dfinput"></td>
	    		<td class="dftr">备注：</td>
	    		<td><input name="clientLinkman.lkmComment" value="${clientLinkman.lkmComment }" type="text" class="dfinput"></td>
	    	</tr>
	    	<tr>
	    		<td><input type="hidden" name="clientLinkman.lkmId" value="${clientLinkman.lkmId }" />
	    			<input type="hidden" name="clientManage.manId" value="${clientLinkman.clientManage.manId }" />
	    		</td>
	    	</tr>
	    </table>
    </div>
	</form>
</body>
</html>