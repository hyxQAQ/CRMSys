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
<style type="text/css">
	td { text-align: left;}
</style>
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li>客户管理</li>
			<li>客户流失管理</li>
			<li>暂缓流失</li>
		</ul>
	</div>
	<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>
		<div class="clear"></div>
		<form action="<%=path %>/pages/cLost-saveVal" method="post">
			<ul class="forminfo" style="margin-left: 20px;">
				<li><input name="" type="button" class="btn" value="返回"
					onclick="history.back();" /></li>
				<li><input name="" type="submit" class="btn" value="保存" /></li>
				<li><input name="" type="button" class="btn" value="确认流失" onclick="javascript:window.location='<%=path %>/pages/cLost-dogetVals?clientLost.lstId= ${clientLost.lstId }'" /></li>
			</ul>
			<div class="clear"></div>
			<table>
				<!-- 给数据设置，用于得到数据库的值,对象要与Action中对应 -->
				<tr>
					<td class="dftr">编号：</td>
					<td>
					<!-- readonly只读属性可以防止页面被修改 -->
					<input type="text" name="clientLost.lstId"  readonly="readonly" value="${clientLost.lstId }"
						class="dfinput" />
						</td>
					<td class="dftr">客户名称：</td>
					<td><input type="text" name="clientLost.lstName" readonly="readonly" value="${clientLost.lstName }"
						class="dfinput" /></td>
				</tr>
				<tr>
					<td class="dftr">客户经理：</td>
					<td><input type="text" name="" value="${clientLost.sysUser.usrName }"
						class="dfinput"  /></td>
					<td class="dftr">上次下单时间：</td>
					<td><input type="text" name="clientLost.lstLastOrderDate" readonly="readonly"
						value="${clientLost.lstLastOrderDate }" class="dfinput"  /></td>
				</tr>
				<tr>
					<td class="dftr">暂缓措施：</td>
					<td colspan="3"><input type="text"
						value="${clientLost.lstDelay }" name="clientLost.lstDelay" class="dfinput" /></td>
				</tr>
				<tr>
					<td class="dftr">追加暂缓措施：</td>
					<td colspan="3"><textarea name="clientLost.lstAddDelay"
						id="desc"	cols="" rows="" class="textinput">${clientLost.lstAddDelay}</textarea><i>*</i></td>
				</tr>
				<!-- 隐藏域，传值-->
				<tr>
					<td>
						 <%-- <input type="hidden"  name="clientLost.lstId" value="${clientLost.lstId }" > --%>
						<!--<input type="hidden" name="usrId" value="${clientLost.sysUser.usrId }">-->
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>