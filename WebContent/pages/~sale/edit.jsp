<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	//验证机会来源
	function checkSource() {
		var uname = document.getElementById("source").value;
		var euname = document.getElementById("esource");
		if (uname == null || uname == "") {
			euname.innerHTML="机会来源不可以为空";
			return false;
		} else {
			euname.innerHTML="*";
			return true;
		}
	}
	//验证客户名称
	function checkManName() {
		var uname = document.getElementById("manName").value;
		var euname = document.getElementById("emanName");
		if (uname == null || uname == "") {
			euname.innerHTML="客户名称不可以为空";
			return false;
		} else {
			euname.innerHTML="*";
			return true;
		}
	}
	//验证成功机率
	function checkRate() {
		var uname = document.getElementById("rate").value;
		var euname = document.getElementById("erate");
		var gailv = /^\d{1,3}$/;
		if(uname == null || uname == "") {
			euname.innerHTML="成功机率格式不可以为空！";
			return false;
		} else if (gailv.test(uname) == false) {
			euname.innerHTML="成功机率格式不正确！";
			return false;
		} else{
			euname.innerHTML="*";
			return true;
		}
	}
	//验证概要
	function checkTitle() {
		var uname = document.getElementById("title").value;
		var euname = document.getElementById("etitle");
		if (uname == null || uname == "") {
			euname.innerHTML="概要不可以为空！";
			return false;
		} else {
			euname.innerHTML="*";
			return true;
		}
	}
	//验证联系人
	function checkLinkman() {
		var uname = document.getElementById("linkman").value;
		var euname = document.getElementById("elinkman");
		if (uname == null || uname == "") {
			euname.innerHTML="联系人不可以为空！";
			return false;
		} else {
			euname.innerHTML="*";
			return true;
		}
	}
	//验证电话
	function checkTel() {
		var uname = document.getElementById("tel").value;
		var euname = document.getElementById("etel");
		var phone = /^(0(10|2[1-3]|[3-9]\d{2}))?[1-9]\d{6,7}$/;
		if(uname == null || uname == ""){
			euname.innerHTML="电话不可以为空！";
			return false;
		} else if (phone.test(uname) == false) {
			euname.innerHTML="电话格式不正确！";
			return false;
		} 
		else {
			euname.innerHTML="*";
			return true;
		}
	}
	//验证机会描述
	function checkDesc() {
		var uname = document.getElementById("desc").value;
		var euname = document.getElementById("edesc");
		if (uname == null || uname == "") {
			euname.innerHTML="机会描述不可以为空！";
			return false;
		} else {
			euname.innerHTML="*";
			return true;
		}
	}

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
</script>
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li>营销管理</li>
			<li>销售机会管理</li>
			<li>编辑销售机会</li>
		</ul>
	</div>
	<form action="pages/mchance-update.action" method="post"
		onsubmit="return checkAll()">
		<div class="formbody">
			<div class="formtitle">
				<span>基本信息</span>
			</div>

			<table>
				<tr>
					<td class="dftr">编号：</td>
					<td><input name="marketChance.chcId" readonly="readonly"
						type="text" class="dfinput" value="${marketChance.chcId}"><i>*必填项</i></td>
					<td class="dftr">机会来源：</td>
					<td><input name="marketChance.chcSource" type="text"
						id="source" class="dfinput" value="${marketChance.chcSource}" onBlur="checkSource()"><i id="esource">*必填项</i></td>
				</tr>
				<tr>
					<td class="dftr">客户名称：</td>
					<td><input name="marketChance.chcManName" type="text"
						id="manName" class="dfinput" value="${marketChance.chcManName}"  onBlur="checkManName()"><i id="emanName">*必填项</i></td>
					<td class="dftr">成功几率：</td>
					<td><input name="marketChance.chcRate" type="text" id="rate"
						class="dfinput" value="${marketChance.chcRate}"  onBlur="checkRate()"><i id="erate">*必填项</i></td>
				</tr>
				<tr>
					<td class="dftr">概要：</td>
					<td colspan="3"><input name="marketChance.chcTitle" id="title"
						type="text" class="dfinput" value="${marketChance.chcTitle}"  onBlur="checkTitle()"><i id="etitle">*</i></td>
				</tr>
				<tr>
					<td class="dftr">联系人：</td>
					<td><input name="marketChance.chcLinkman" type="text"
						id="linkman" class="dfinput" value="${marketChance.chcLinkman}"  onBlur="checkLinkman()"><i id="elinkman">*</i></td>
					<td class="dftr">联系电话：</td>
					<td><input name="marketChance.chcTel" type="text" id="tel"
						class="dfinput" value="${marketChance.chcTel}"  onBlur="checkTel()"><i id="etel">*必填项，输入8位电话号码</i></td>
				</tr>
				<tr>
					<td class="dftr">客户等级：</td>
	    			<td><s:select id="rankId" list="request.clientRankList" listKey="rkId" listValue="rkName" name="rankId" class="dfinput2"  onblur="checkRank()">    		
	    			</s:select><i>*</i></td>
	    			<td class="dftr">地区：</td>
	    			<td ><s:select id="did" onblur="checkDistrict()" list="request.districtList" listKey="dsId" listValue="dsName" name="did" class="dfinput2" >    		
	    			</s:select><i id="edid">*</i></td>
				</tr>
				<tr>
					<td class="dftr">机会描述</td>
					<td colspan="3"><textarea name="marketChance.chcDesc"
							id="desc" cols="" rows="" class="textinput"  onBlur="checkDesc()">${marketChance.chcDesc}</textarea><i id="edesc">*必填项</i>
						<!-- 隐藏域 -->
						<input type="hidden"  name="marketChance.chcStatus" value="${marketChance.chcStatus }" >
						<input type="hidden"  name="marketChance.createMan" value="${marketChance.createMan }" >
					</td>
				</tr>
				<!-- <tr>
	    		<td class="dftr">创建人：</td>
	    		<td><input name="marketChance.chcId" type="text" class="dfinput"><i>*</i></td>
	    		<td class="dftr">创建时间：</td>
	    		<td><input name="marketChance.chcId" type="text" class="dfinput"><i>*</i></td>
	    	</tr> -->
				<tr>
					<td>&nbsp;</td>
				</tr>
				<s:if test="marketChance.chcStatus == '开发中' ">
				<tr>
					<td class="dftr">指派给：</td>
					<td>
						<%-- <select class="dfinput2">
						<option value="admin">admin</option>
						<option value="test">test</option>
				</select> --%> <s:select list="request.User" listKey="usrId"
							cssClass="dfinput2" listValue="usrName" name="roleId"></s:select> <i>*</i>
					</td>
					<td class="dftr">指派时间：</td>
					<td><input name="marketChance.chcDate" type="text" id="date" readonly="readonly"
						class="dfinput" value="${marketChance.chcDate}"> <%-- <s:date name="marketChance.chcDate" format="yyyy-MM-dd HH:mm:ss" /> --%>
						<i>*</i></td>
				</tr>
				</s:if>
			</table>
			<ul class="forminfo">
				<s:if test="#session.sysUser.usrId == marketChance.createMan || #session.sysRole.roleName == '销售主管'">
				<li><label>&nbsp;</label><input name="" type="submit"
					class="btn" value="确认保存" /></li>
				</s:if>
				<li><label>&nbsp;</label><input name="" type="button"
					class="btn" value="返回" onclick="history.back();" /></li>
			</ul>
		</div>
	</form>
</body>
</html>