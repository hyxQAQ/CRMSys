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
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
li {
	margin-left: 5px;
}
</style>
<script type="text/javascript">
	//处理结果点击事件
	function jieguo() {
		var result = document.getElementById("result").value;
		var cresult = document.getElementById("cresult");
		if (result == null || result == "") {
			cresult.innerHTML = "服务处理结果不可以为空！";
			return false;
		} else {
			cresult.innerHTML = "*";
			return true;
		}
	};
	//提交表单的事件
	function checkAll(){
		if(jieguo()==false){
			alert("信息不完整！");
			return false;
		}else{
			return true;
		}
		
	}
</script>
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li>客户服务管理</li>
			<li>服务处理</li>
		</ul>
	</div>
	<div class="formbody">
		<div class="clear"></div>
		<form
			action="<%=path%>/pages/cService-doDealDetail?clientService.svrId=${clientService.svrId }"
			method="post" onsubmit="return checkAll();">
			<ul class="forminfo" style="margin-left: 10px;">
				<li><input name="" type="button" class="btn" value="返回"
					onclick="history.back();" /></li>
				<li><input name="" type="submit" class="btn" value="保存" /></li>
			</ul>
			<div class="clear"></div>
			<table>
				<tr>
					<td class="dftr">编号：</td>
					<td class="dfinput">${clientService.svrId }</td>
					<td class="dftr">服务类型：</td>
					<td class="dfinput">
						<s:select list="typeList" listKey="stId" listValue="stName" headerKey="0" headerValue="请选择" name="serviceType.stId"></s:select>
					</td>
				</tr>
				<tr>
					<td class="dftr">概要：</td>
					<td class="dfinput">${clientService.svrTitle }</td>
				</tr>
				<tr>
					<td class="dftr">客户：</td>
					<td class="dfinput">${clientService.svtNmae }</td>
					<td class="dftr">状态：</td>
					<td class="dfinput">${clStatus}</td>
				</tr>
				<tr>
					<td class="dftr">服务请求：</td>
					<td class="dfinput">${clientService.svrRequest }</td>
				</tr>
				<tr>
					<td class="dftr">创建人：</td>
					<td class="dfinput">${clientService.svrCreateName }</td>
					<td class="dftr">创建时间：</td>
					<td class="dfinput">${clientService.svrCreateDate }</td>
				</tr>
				<tr>
					<td class="dftr">分配给：</td>
					<td class="dfinput">${clientService.sysUser.usrName }</td>
					<td class="dftr">分配时间：</td>
					<td class="dfinput">${clientService.svrDueDate }</td>
				</tr>
				<tr>
					<td class="dftr">服务处理：</td>
					<td><textarea name="clsvrResult" cols="" rows=""  class="textinput" id="result" onBlur="jieguo()"></textarea><i id="cresult">*必填项</i></td>
				</tr>
				<tr>
					<td class="dftr">处理人：</td>
					<td><input type="text" class="dfinput"
						value="${session.sysUser.usrName}" readonly="readonly"></td>
					<td class="dftr">处理时间：</td>
					<td class="dfinput"><input type="text" name="clDate"
						value="${clDate}" readonly="readonly" style="font-size: 14px;"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>