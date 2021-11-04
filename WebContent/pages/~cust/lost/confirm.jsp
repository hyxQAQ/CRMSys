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

</script>
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li>客户管理</li>
			<li>客户流失管理</li>
			<li>确认流失</li>
		</ul>
	</div>
	<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>
		<div class="clear"></div>
		<form action="<%=path %>/pages/cLost-saveVals" method="post">
			<ul class="forminfo" style="margin-left: 20px;">
				<li><input name="" type="button" class="btn" value="返回"
					onclick="history.back();" /></li>
				<li><input name="" type="submit" class="btn" value="保存" /></li>
				<li><input name="" type="button" class="btn" value="暂缓流失" onclick="javascript:window.location='<%=path %>/pages/cLost-dogetVal?clientLost.lstId= ${clientLost.lstId }'"/></li>
			</ul>
			<div class="clear"></div>
			<table>
				<tr>
					<td class="dftr">编号：</td>
					<td><input type="text"  readonly="readonly" name="clientLost.lstId" value="${clientLost.lstId }"
						class="dfinput" /></td>
					<td class="dftr">客户名称：</td>
					<td><input type="text" name="clientLost.lstName" readonly="readonly" value="${clientLost.lstName }"
						class="dfinput" /></td>
				</tr>
				</tr>
				<tr>
					<td class="dftr">客户经理：</td>
					<td><input type="text" name="" value="${clientLost.sysUser.usrName }"
						class="dfinput"  /></td>
					<td class="dftr">上次下单时间：</td>
					<td><input type="text" readonly="readonly" name="clientLost.lstLastOrderDate"
						value="${clientLost.lstLastOrderDate }" class="dfinput"  /></td>
				</tr>
				<tr>
					<td class="dftr">暂缓措施：</td>
					<td colspan="3"><input type="text"
						value="${clientLost.lstDelay }" name="clientLost.lstDelay" class="dfinput" /></td>
				</tr>
				<tr>
					<td class="dftr">流失原因：</td>
					<td colspan="3"><textarea name="clientLost.lstReason"
						id="desc"	cols="" rows="" class="textinput">${clientLost.lstReason }</textarea><i>*</i></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>