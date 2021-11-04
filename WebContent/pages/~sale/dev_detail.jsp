<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<style>
.dftr2 {width:150px; text-align: center; background-color:#94FEC9; height:32px;}
</style>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>营销管理</li>
    <li>客户开发计划</li>
    <li>执行计划</li>
    </ul>
    </div>
    <div class="formbody">
	    <div class="formtitle"><span>基本信息</span></div>
	    <div class="clear"></div>
	    <ul class="forminfo" style="margin-left: 10px;">
	     	 <li><input name="" type="button" class="btn" value="返回" onclick="history.back();"/></li>
	    </ul>
	    <div class="clear"></div>
		<table >
				<tr>
				<td class="dftr">编号</td>
				<td class="dfinput">${clientPlan.plaId}</td>
				<td class="dftr">机会来源</td>
				<td class="dfinput">${clientPlan.marketChance.chcSource}</td>
			</tr>
			<tr>
				<td class="dftr">客户名称</td>
				<td class="dfinput">${clientPlan.marketChance.chcManName}</td>
				<td class="dftr">成功几率（%）</td>
				<td class="dfinput">${clientPlan.marketChance.chcRate}</td>
			</tr>
			<tr>
				<td class="dftr" >概要</td>
				<td class="dfinput">${clientPlan.marketChance.chcTitle}</td>
				<td class="dftr">状态</td>
				<td class="dfinput">${clientPlan.marketChance.chcStatus}</td>
			</tr>
			<tr>
				<td class="dftr">负责人</td>
				<td class="dfinput">${clientPlan.marketChance.chcLinkman}</td>
				<td class="dftr">公司电话</td>
				<td class="dfinput">${clientPlan.marketChance.chcTel}</td>
			</tr>
			<tr>
				<td class="dftr">机会描述</td>
				<td class="dfinput">${clientPlan.marketChance.chcDesc}</td>
			</tr>
			<tr>
				<td class="dftr">创建人</td>
				<td class="dfinput">${sysUser.usrName}</td>
				<td class="dftr">创建时间</td>
				<td class="dfinput">${clientPlan.marketChance.createDate}</td>
			</tr>
			<tr>
				<td class="dftr">指派给</td>
				<td  class="dfinput">${clientPlan.marketChance.sysUser.usrName}</td>
				<td class="dftr">指派时间</td>
				<td class="dfinput">${clientPlan.marketChance.chcDate}</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>
		<table>
			<tr>
				<td class="dftr2">日期</td>
				<td class="dftr2">计划项</td>
				<td class="dftr2">执行效果</td>
			</tr>
			<tr>
				<td  align="center"  class="dfinput">${clientPlan.plaDate}</td>
				<td  align="center" class="dfinput">${clientPlan.plaTodo}</td>
				<td  align="center" class="dfinput">${clientPlan.plaResult}</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>

	</div>
</body>
</html>