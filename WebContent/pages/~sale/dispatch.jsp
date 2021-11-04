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
</head>
<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>营销管理</li>
    <li>销售机会管理</li>
    <li>指派销售机会</li>
    </ul>
    </div>
    <form action="<%=path %>/pages/mchance-doDispatch" method="post">
    <div class="formbody">
	    <div class="formtitle"><span>基本信息</span></div>
	    
		<table >
			<tr>
				<td class="dftr">编号</td>
				<td class="dfinput">${marketChance.chcId }</td>
				<td class="dftr">机会来源</td>
				<td class="dfinput">${marketChance.chcSource  }</td>
			</tr>
			<tr>
				<td class="dftr">客户名称</td>
				<td class="dfinput">${marketChance.chcManName  }</td>
				<td class="dftr">成功几率（%）</td>
				<td class="dfinput">${marketChance.chcRate  }</td>
			</tr>
			<tr>
				<td class="dftr">概要</td>
				<td colspan="3">&nbsp;${marketChance.chcTitle  }</td>
			</tr>
			<tr>
				<td class="dftr">联系人</td>
				<td class="dfinput">${marketChance.chcLinkman  }</td>
				<td class="dftr">联系人电话</td>
				<td class="dfinput">${marketChance.chcTel  }</td>
			</tr>
			<tr>
				<td class="dftr">创建人</td>
				<td class="dfinput">${request.sUser.getUsrName()  }</td>
				<td class="dftr">创建时间</td>
				<td class="dfinput"><s:date name="marketChance.createDate" format="yyyy-MM-dd HH:mm:ss"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="dftr">指派给：</td>
		    		<td>
		    		<s:select list="request.sysUserList" listKey="usrId"
							cssClass="dfinput2" listValue="usrName" name="userId"></s:select>
		    		<i>*</i>
		    		</td>
		    		<td class="dftr">指派时间：</td>
		    		<td class="dfinput"><s:date name="date" format="yyyy-MM-dd HH:mm:ss"/><i>*</i>
		    		<!-- 隐藏域 -->
		    		<input type="hidden" value="${marketChance.chcId }" name="marketChance.chcId" />
		    		</td>
		    		
			</tr>
		</table>
	
		 <ul class="forminfo">
	     	 <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
	     	 <li><label>&nbsp;</label><input name="" type="button" class="btn" value="返回" onclick="history.back();"/></li>
	     </ul>
	</div>
	</form>
</body>
</html>