<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
//负责人验证
function checkLink() {
	var uname = document.getElementById("linkId").value;
	var uname1 = document.getElementById("linkId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="负责人不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}
//成功几率验证
function checkRate() {
	var uname = document.getElementById("rateId").value;
	var uname1 = document.getElementById("rateId1");
	var shu=/\d{1,3}$/;
	if (uname == null || uname == "") {
		uname1.innerHTML="成功几率不能为空";
		return false;
	} else if (shu.test(uname)==false) {
		uname1.innerHTML="成功几率格式不正确";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//公司电话验证
function checkTel() {
	var uname = document.getElementById("telId").value;
	var uname1 = document.getElementById("telId1");
	var phone=/^(0(10|2[1-3]|[3-9]\d{2}))?[1-9]\d{6,7}$/;
	if (uname == null || uname == "") {
		uname1.innerHTML="公司电话不能为空";
		return false;
	} else if (phone.test(uname)==false) {
		uname1.innerHTML="公司电话格式不正确";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}
//客户等级验证
function checkRank() {
	var uname = document.getElementById("rankId").value;
	var uname1 = document.getElementById("rankId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="客户等级不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//地区验证
function checkDistrict() {
	var uname = document.getElementById("dId").value;
	var uname1 = document.getElementById("dId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="地区不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//机会描述验证
function checkChance() {
	var uname = document.getElementById("cId").value;
	var uname1 = document.getElementById("cId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="机会描述不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//指派人验证
function checkUser() {
	var uname = document.getElementById("uId").value;
	var uname1 = document.getElementById("uId");
	if (uname == null || uname == "") {
		uname1.innerHTML="指派人不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

 //验证表单提交
function checkAll() {
	if(checkManName() && checkLink() && checkRate() && checkTel() && checkRank() && checkDistrict() && checkChance() && checkUser()){
		return true;
	} else{
		alert("信息不完整，请核对!");
		return false;
	} 
} 
</script>
<%-- <script type="text/javascript">
//验证客户名称
function checkManName() {
	var uname = document.getElementById("manId").value;
	if (uname == null || uname == "") {
		return false;
	} else {
		return true;
	}
}
//联系人验证
function checkLink() {
	var uname = document.getElementById("linkId").value;
	if (uname == null || uname == "") {
		return false;
	} else {
		return true;
	}
}
//成功几率验证
function checkRate() {
	var uname = document.getElementById("rateId").value;
	var shu=/\d{1,3}$/;
	if (shu.test(uname)==false) {
		return false;
	} else {
		return true;
	}
}

//公司电话验证
function checkTel() {
	var uname = document.getElementById("telId").value;
	var phone=/^1\d{10}$/;
	if (phone.test(uname)==false) {
		return false;
	} 
		return true;
}
//客户等级验证
function checkRank() {
	var uname = document.getElementById("rankId").value;
	if (uname == null || uname == "") {
		return false;
	} else {
		return true;
	}
}

//地区验证
function checkDistrict() {
	var uname = document.getElementById("dId").value;
	if (uname == null || uname == "") {
		return false;
	} else {
		return true;
	}
}

//机会描述验证
function checkChance() {
	var uname = document.getElementById("cId").value;
	if (uname == null || uname == "") {
		return false;
	} else {
		return true;
	}
}

/* //验证表单提交
function checkAll() {
	var uman = document.getElementById("manId").value;
	var ulink = document.getElementById("linkId").value;
	var urate = document.getElementById("rateId").value;
	var utel = document.getElementById("telId").value;
	var urank = document.getElementById("rankId").value;
	var udid = document.getElementById("dId").value;
	var ucid = document.getElementById("cId").value;
	if (!checkManName()) {
		uman.focus();
		return false;
	} else if (!checkLink()) {
		ulink.focus();
		return false;
	} else if (!checkRate()) {
		urate.focus();
		return false;
	} else if (!checkTel()) {
		utel.focus();
		return false;
	}  else if (!checkRank()) {
		urank.focus();
		return false;
	} else if (!checkDistrict()) {
		udid.focus();
		return false;
	}else if (!checkChance()) {
		ucid.focus();
		return false;
	}else {
		return true;
	}
}  */
//表单提交时的验证
function checkAll() {
	if (checkDesc() && checkTel() && checkLinkman() && checkTitle()
			&& checkRate() && checkManName() && checkSource()) {
		return true;
	} else {
		alert("信息有误或者不完整，请查实再提交！");
		return false;
	}
}
</script> --%>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>营销管理</li>
    <li>销售机会管理</li>
    <li>新增销售机会</li>
    </ul>
    </div>
    
    <div class="formbody">
    
    	<div class="formtitle"><span>基本信息</span></div>
    <form action="pages/mchance-doAdd" method="post" onsubmit="return checkAll()">
	    <table>
	    	<tr>
	    		<td class="dftr">客户名称：</td>
	    		<td><input name="marketChance.chcManName" type="text" class="dfinput" id="manId" onblur="checkManName()"><i id="manId1">*必填项</i></td>
	    		<td class="dftr">联系人：</td>
	    		<td><input name="marketChance.chcLinkman" type="text" class="dfinput" id="linkId" onblur="checkLink()"><i id="linkId1">*必填项</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">机会来源：</td>
	    		<td><input name="marketChance.chcSource" type="text" class="dfinput"></td>
	    		<td class="dftr">成功几率：</td>
	    		<td><input name="marketChance.chcRate" type="text" class="dfinput" id="rateId" onblur="checkRate()"><i id="rateId1">*必填项，请输入整数</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">公司电话：</td>
	    		<td><input name="marketChance.chcTel" type="text" class="dfinput" id="telId" onblur="checkTel()"><i id="telId1">*必填项，输入8位电话号码</i></td>
	    		<td class="dftr">客户等级：</td>
	    		<td><s:select id="rankId" list="request.clientRankList" listKey="rkId" listValue="rkName" name="rankId" class="dfinput2" headerKey="" headerValue="请选择" onblur="checkRank()">    		
	    		</s:select><i id="rankId1">*</i></td>
	    	</tr>
	       	<tr>
	    		<td class="dftr">概要：</td>
	    		<td><input name="marketChance.chcTitle" type="text" class="dfinput"></td>
	    		<td class="dftr">地区：</td>
	    		<td ><s:select id="dId" onblur="checkDistrict()" list="request.districtList" listKey="dsId" listValue="dsName" name="did" class="dfinput2" headerKey="" headerValue="请选择">    		
	    		</s:select><i id="dId1">*</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">机会描述</td>
	    		<td colspan="3"><textarea name="marketChance.chcDesc" cols="" rows="" class="textinput" id="cId" onblur="checkChance()"></textarea><i id="cId1">*必填项</i></td>
	    	</tr>
	    	<tr>
	    		<td>&nbsp;</td>
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