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
<style>
.dftr2 {width:150px; text-align: center; background-color:#94FEC9; height:32px;}
li {margin-left: 5px;}
</style>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>营销管理</li>
    <li>客户开发计划</li>
    <li>制定计划</li>
    </ul>
    </div>
    <div class="formbody">
	    <div class="formtitle"><span>基本信息</span></div>
	    <div class="clear"></div>
	    <form action="pages/cPlan-executePlan?clientPlan.plaId=${clientPlan.plaId}" method="post" >
		 <ul class="forminfo" style="margin-left: 10px;">
	     	 <li><input name="" type="submit" class="btn" value="执行计划"/></li>
	     	 <li><input name="" type="button" class="btn" value="返回" onclick="javascript:window.location='<%=path %>/pages/cPlan-doSearch'"/></li>
	     </ul>
	     </form>
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
				<td class="dftr">负责人</td>
				<td class="dfinput">${clientPlan.marketChance.chcLinkman}</td>
				<td class="dftr">公司电话</td>
				<td class="dfinput">${clientPlan.marketChance.chcTel}</td>
			</tr>
			<tr>
				<td class="dftr" >概要</td>
				<td colspan="3" class="dfinput">${clientPlan.marketChance.chcTitle}</td>
			</tr>
			<tr>
				<td class="dftr">机会描述</td>
				<td colspan="3" class="dfinput">${clientPlan.marketChance.chcDesc}</td>
			</tr>
			<tr>
			<td class="dftr">创建人</td>
				<td colspan="3" class="dfinput">${sysUser.usrName}</td>
			</tr>
			<tr>
			<td class="dftr">创建时间</td>
				<td colspan="3" class="dfinput">${clientPlan.marketChance.createDate}</td>
			</tr>
			<tr>
			<td class="dftr">指派人</td>
				<td colspan="3" class="dfinput">${clientPlan.marketChance.sysUser.usrName}</td>
			</tr>
			<tr>
			<td class="dftr">指派时间</td>
				<td colspan="3" class="dfinput">${clientPlan.marketChance.chcDate}</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>
		<table>
			<tr>
				<td class="dftr2">日期</td>
				<td class="dftr2">计划项</td>
				<td class="dftr2">操作</td>
			</tr>
			<tr>
				<td><s:date name="clientPlan.plaDate" format="yyyy-MM-dd HH:mm:ss"/></td>
				<td><input name="plaTodo" type="text" readonly="readonly" class="dfinput" value="${clientPlan.plaTodo }"/></td>
				<td><input name="" id="delPlatodo" type="button" class="btn"  value="删除" onclick="javascript:window.location='<%=path %>/pages/cPlan-delPlatodo?clientPlan.plaId=${clientPlan.plaId }'" /><input type="hidden" value="${clientPlan.plaId }"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>
		<form action="pages/cPlan-addPlantodo">
		<input name="add" type="submit" class="btn" value="添加"/>
		<table>
			<tr>
				<td class="dftr">日期</td>
	    		<td><s:date name="date" format="yyyy-MM-dd HH:mm:ss"/>
	    		</td>
	    		<td class="dftr">计划项</td>
	    		<td><input name="clientPlan.plaTodo" type="text" class="dfinput"><i>*</i>
	    		<input name="clientPlan.plaId" type="hidden" value="${clientPlan.plaId}" />
	    		</td>
			</tr>
		</table>
		</form>
		
	</div>
</body>
</html>