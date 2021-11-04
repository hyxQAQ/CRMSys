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
//验证客户编号
function checkManId() {
	var uname = document.getElementById("manId").value;
	var uname1 = document.getElementById("manId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="客户编号不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}
//验证客户名称
function checkManName() {
	var uname = document.getElementById("nameId").value;
	var uname1 = document.getElementById("nameId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="客户名称不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证地区
function checkDistrict() {
	var uname = document.getElementById("dsId").value;
	var uname1 = document.getElementById("dsId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="地区不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证客户经理
function checksysUser() {
	var uname = document.getElementById("userId").value;
	var uname1 = document.getElementById("userId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="客户经理不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证客户等级
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

//验证客户满意度
function checkSatisfy() {
	var uname = document.getElementById("sfId").value;
	var uname1 = document.getElementById("sfId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="客户满意度不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证客户信誉度
function checkCredit() {
	var uname = document.getElementById("cdId").value;
	var uname1 = document.getElementById("cdId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="客户信誉度不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证地址
function checkAddr() {
	var uname = document.getElementById("addrId").value;
	var uname1 = document.getElementById("addrId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="地址不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证邮政编码
function checkZip() {
	var uname = document.getElementById("zipId").value;
	var uname1 = document.getElementById("zipId1");
	var shu=/^[1-9][0-9]{5}$/;
	if(uname == null || uname == ""){
		uname1.innerHTML="邮政编码不能为空";
		return false;
	}else if (shu.test(uname)==false) {
		uname1.innerHTML="邮政编码格式不正确";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证电话号码
function checkTel() {
	var uname = document.getElementById("telId").value;
	var uname1 = document.getElementById("telId1");
	var phone=/^(0(10|2[1-3]|[3-9]\d{2}))?[1-9]\d{6,7}$/;
	if(uname == null || uname == ""){
		uname1.innerHTML="电话号码不能为空";
		return false;
	}else if (phone.test(uname)==false) {
		uname1.innerHTML="电话号码格式不正确";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证传真
function checkFax() {
	var uname = document.getElementById("faxId").value;
	var uname1 = document.getElementById("faxId1");
	var phone=/^(0(10|2[1-3]|[3-9]\d{2}))?[1-9]\d{6,7}$/;
	if(uname == null || uname == ""){
		uname1.innerHTML="传真不能为空";
		return false;
	}else if (phone.test(uname)==false) {	
		uname1.innerHTML="传真格式不正确";
		return false;
	}else {
		uname1.innerHTML="*";
		return true;
	}
}
//验证网址
function checkWebsite() {
	var uname = document.getElementById("webId").value;
	var uname1 = document.getElementById("webId1");
	if (uname == null || uname == "") {	
		uname1.innerHTML="网址不能为空";
		return false;
	}else {
		uname1.innerHTML="*";
		return true;
	}
}


//验证法人
function checkChieftain() {
	var uname = document.getElementById("ftId").value;
	var uname1 = document.getElementById("ftId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="法人不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证开户银行
function checkBrank() {
	var uname = document.getElementById("brankId").value;
	var uname1 = document.getElementById("brankId1");
	if (uname == null || uname == "") {
		uname1.innerHTML="开户银行不能为空";
		return false;
	} else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证银行账号
function checkBrankAccount() {
	var uname = document.getElementById("baId").value;
	var uname1 = document.getElementById("baId1");
	var phone=/\d{19}$/;
	if(uname == null || uname == ""){
		uname1.innerHTML="银行账号不能为空";
		return false;
	}else if (phone.test(uname)==false) {		
		uname1.innerHTML="银行账号格式不正确";
		return false;
	}else {
		uname1.innerHTML="*";
		return true;
	}
}

//验证表单提交
function checkAll() {
	var uman = document.getElementById("manId");
	var uname = document.getElementById("nameId");
	var uds = document.getElementById("dsId");
	var uuser = document.getElementById("userId");
	var urank = document.getElementById("rankId");
	var usf = document.getElementById("sfId");
	var ucd = document.getElementById("cdId");
	var uaddr = document.getElementById("addrId");
	var uzip = document.getElementById("zipId");
	var utel = document.getElementById("telId");
	var ufax = document.getElementById("faxId");
	var uweb = document.getElementById("webId");
	var uft = document.getElementById("ftId");
	var ubrank = document.getElementById("brankId");
	var uba = document.getElementById("baId");
	if (!checkManId()) {
		uman.focus();
		return false;
	} else if (!checkManName()) {
		uname.focus();
		return false;
	} else if (!checkDistrict()) {
		uds.focus();
		return false;
	}else if (!checksysUser()) {
		uuser.focus();
		return false;
	}else if (!checkRank()) {
		urank.focus();
		return false;
	}else if (!checkSatisfy()) {
		usf.focus();
		return false;
	}else if (!checkCredit()) {
		ucd.focus();
		return false;
	}else if (!checkAddr()) {
		uaddr.focus();
		return false;
	}else if (!checkZip()) {
		uzip.focus();
		return false;
	}else if (!checkTel()) {
		utel.focus();
		return false;
	}else if (!checkFax()) {
		ufax.focus();
		return false;
	}else if (!checkWebsite()) {
		uweb.focus();
		return false;
	}else if (!checkChieftain()) {
		uft.focus();
		return false;
	}else if (!checkBrank()) {
		ubrank.focus();
		return false;
	}else if (!checkBrankAccount()) {
		uba.focus();
		return false;
	}else {
		return true;
	}

}
</script>
<style type="text/css">
li {margin-left: 10px;}

</style>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>客户管理</li>
    <li>客户信息管理</li>
    <li>客户信息</li>
    </ul>
    </div>
    <div class="formbody">
    
    	<div class="formtitle"><span>基本信息</span></div>
    	<div class="clear"></div>
    	<form action="<%=path %>/pages/cManage-update?clientManage.manId=${clientManage.manId}" method="post" onsubmit="return checkAll()">
    	 <ul class="forminfo" style="margin-left: 2px;">
	     	 <li><input name="" type="button" class="btn" value="联系人" onclick="javacript:window.location='<%=path%>/pages/cLinkMan-findLinkMan?clientManage.manId=${clientManage.manId }'"/></li>
	     	 <li><input name="" type="button" class="btn" value="交往记录" onclick="javacript:window.location='<%=path%>/pages/cActivity-findActivty?clientManage.manId=${clientManage.manId }'"  /></li>
	     	 <li><input name="" type="button" class="btn" value="历史订单" onclick="javacript:window.location='<%=path%>/pages/orders-findOrders?clientManage.manId=${clientManage.manId }'" /></li>
	     	 <li><input name="" type="submit" class="btn" value="保存"/></li>
	     	 <li><input name="" type="button" class="btn" value="返回" onclick="history.back();"/></li>
	     </ul>
        <table>
	    	<tr>
	    		<td class="dftr" id="manId2" >客户编号：</td>
	    		<td><input name="clientManage.manSerial" value="${clientManage.manSerial }" type="text" class="dfinput" id="manId" onblur="checkManId()"><i id="manId1">*</i></td>
	    		<td class="dftr">客户名称：</td>
	    		<td><input name="clientManage.manName" value="${clientManage.manName }" type="text" class="dfinput" id="nameId" onblur="checkManName()"><i id="nameId1">*</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">地区：</td>
	    		<td class="dfinput"><s:select list="request.districtList" listKey="dsId" listValue="dsName" name="dsId" id="dsId" onblur="checkDistrict()"></s:select><i id="dsId1">*</i></td>
	    		<td class="dftr">客户经理：</td>
	    		<td class="dfinput">
	    		<s:if test="#session.sysUser.sysoRole.roleId == 1">
	    		<s:select list="request.sysUserList" listKey="usrId" listValue="usrName" name="usrId" id="userId" onblur="checksysUser()">
	    		</s:select><i id="userId1">*</i>
	    		</s:if>
	    		<s:else>
	    			${clientManage.sysUser.usrName }
	    		</s:else>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">客户等级：</td>
	    		<td colspan="3" class="dfinput"><s:select list="request.clientRankList" listKey="rkId" listValue="rkName"  name="rkId" id="rankId" onblur="checkRank()"></s:select><i id="rankId1">*</i></td>
	    	</tr>
	       	<tr>
	    		<td class="dftr">客户满意度：</td>
	    		<td><select class="dfinput" name="clientManage.manSatisfy" id="sfId" onblur="checkSatisfy()">
	    			<option value="1" <s:if test="clientManage.manSatisfy == 1">selected="selected"</s:if> >☆</option>
	    			<option value="2" <s:if test="clientManage.manSatisfy == 2">selected="selected"</s:if> >☆☆</option>
	    			<option value="3" <s:if test="clientManage.manSatisfy == 3">selected="selected"</s:if> >☆☆</option>
	    			<option value="4" <s:if test="clientManage.manSatisfy == 4">selected="selected"</s:if> >☆☆☆☆</option>
	    			<option value="5" <s:if test="clientManage.manSatisfy == 5">selected="selected"</s:if> >☆☆☆☆☆</option>
	    		</select><i id="sfId1">*</i></td>
	    		<td class="dftr">客户信用度：</td>
	    		<td><select class="dfinput" name="clientManage.manCredit" id="cdId" onblur="checkCredit()">
	    			<option value="1" <s:if test="clientManage.manCredit == 1">selected="selected"</s:if> >☆</option>
	    			<option value="2" <s:if test="clientManage.manCredit == 2">selected="selected"</s:if> >☆☆</option>
	    			<option value="3" <s:if test="clientManage.manCredit == 3">selected="selected"</s:if> >☆☆☆</option>
	    			<option value="4" <s:if test="clientManage.manCredit == 4">selected="selected"</s:if> >☆☆☆☆</option>
	    			<option value="5" <s:if test="clientManage.manCredit == 5">selected="selected"</s:if> >☆☆☆☆☆</option>
	    		</select><i id="cdId1">*</i></td>
	    	</tr>
	    	<tr>
	    		<td>&nbsp;</td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">地址：</td>
	    		<td><input name="clientManage.manAddr"  value="${clientManage.manAddr }" type="text" class="dfinput" id="addrId" onblur="checkAddr()"><i id="addrId1">*</i></td>
	    		<td class="dftr">邮政编码：</td>
	    		<td><input name="clientManage.manZip" value="${clientManage.manZip }" type="text" class="dfinput" id="zipId" onblur="checkZip()"><i id="zipId1">*输入6位数字</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">电话：</td>
	    		<td><input name="clientManage.manTel" value="${clientManage.manTel }" type="text" class="dfinput" id="telId" onblur="checkTel()"><i id="telId1">*输入8位数字</i></td>
	    		<td class="dftr">传真：</td>
	    		<td><input name="clientManage.manFax" value="${clientManage.manFax }" type="text" class="dfinput" id="faxId" onblur="checkFax()"><i id="faxId1">*输入8位数字</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">网址：</td>
	    		<td><input name="clientManage.manWebsite"  value="${clientManage.manWebsite }" type="text" class="dfinput" id="webId" onblur="checkWebsite()"><i id="webId1">*</i></td>
	    	</tr>
	    	<tr>
	    		<td>&nbsp;</td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">营业执照注册号：</td>
	    		<td><input name="clientManage.manLicenceNo" value="${clientManage.manLicenceNo }" type="text" class="dfinput"></td>
	    		<td class="dftr">法人：</td>
	    		<td><input name="clientManage.manChieftain" value="${clientManage.manChieftain }" type="text" class="dfinput" id="ftId" onblur="checkChieftain()"><i id="ftId1">*</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">注册资金（万元）：</td>
	    		<td><input name="clientManage.manBankroll" value="${clientManage.manBankroll }" type="text" class="dfinput"></td>
	    		<td class="dftr">年营业额：</td>
	    		<td><input name="clientManage.manTurnover" value="${clientManage.manTurnover }" type="text" class="dfinput"></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">开户银行：</td>
	    		<td><input name="clientManage.manBrank" value="${clientManage.manBrank }" type="text" class="dfinput" id="brankId" onblur="checkBrank()"><i id="brankId1">*</i></td>
	    		<td class="dftr">银行帐号：</td>
	    		<td><input name="clientManage.manBrankAccount" value="${clientManage.manBrankAccount }" type="text" class="dfinput" id="baId" onblur="checkBrankAccount()"><i id="baId1">*输入19位数字</i></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">地税登记号：</td>
	    		<td><input name="clientManage.manLocalNo" value="${clientManage.manLocalNo }" type="text" class="dfinput"></td>
	    		<td class="dftr">国税登记号：</td>
	    		<td><input name="clientManage.manNationalNo" value="${clientManage.manNationalNo }" type="text" class="dfinput"></td>
	    	</tr>
	    </table>
	    </form>
    </div>
</body>
</html>