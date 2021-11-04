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
 li { margin-left: 5px;}
</style>
<script type="text/javascript" src="<%=path %>/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
//保存数据
$(document).ready(function(){
	 $("#baocun").click(function(){
	  //得到chcId标签中的下一个标签的值
	  	
	  	 var value = $(this).val();
	  	 var $input = $(this);
	  	 if (value == '保存') {
	  		 var flag = confirm("确定要保存吗？");
			 var plaId= $(this).next().val();
			 var plaResult = $("#plaResult").val();
			
				 if (flag) {
						//保存，用ajax的方式
						// $tr = $(this).parent().parent();//调用父节点
						//通过调用Action的方法并且代值
						var url = "pages/cPlan-savePlan?plaId="+plaId+"&plaResult="+plaResult;
						$.post(url,function(data){
							if (data == "1") {
								$input.attr("value","修改");		
								$("#plaResult").attr("readonly","readonly");	
								alert("保存成功！");
							} else {
								alert("保存失败！");
							}
			  			});
				} 
	  	 } else {
			var flag = confirm("确定修改吗！"); 
			if (flag) {
				$input.attr("value","保存");		
				$("#plaResult").attr("readonly",false);
			}
		 }
	}); 
});
</script> 
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
	    <ul class="forminfo" style="margin-left: 0px;">
	     	 <li><input name="" type="button"  class="btn" value="终止开发" onclick="javascript:(alert('开发失败，已归档'));window.location='<%=path%>/pages/cPlan-lostPlan?clientPlan.plaId=${clientPlan.plaId}'"/></li>
	     	 <li><input name="" type="button" class="btn" value="返回" onclick="javascript:window.location='<%=path %>/pages/cPlan-doSearch'"/></li>
	     	 <li><input name="" type="button"  class="btn" value="制定计划" onclick="javascript:window.location='<%=path %>/pages/cPlan-doGetClientPlan?clientPlan.plaId=${clientPlan.plaId}'"/></li>
	     	 <li><input name="" type="button"  class="btn" value="开发成功" onclick="javascript:(alert('开发成功，已归档'));window.location='<%=path %>/pages/cPlan-winPlan?clientPlan.plaId=${clientPlan.plaId}'"/></li>
	     <!-- 	javascript: javascript:(alert('开发失败，已归档')); ?clientPlan.plaId=${clientPlan.plaId}-->
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
				<td class="dftr2">执行效果</td>
				<td class="dftr2">执行操作</td>
			</tr>
			<tr>
				<td align="center"  class="dfinput">${clientPlan.plaDate}</td>
				<td align="center"  class="dfinput">${clientPlan.plaTodo}</td>
				<td align="center"  class="dfinput"><input id="plaResult" type="text" name="clientPlan.plaResult" value="${clientPlan.plaResult}"></td>
				<td align="center"><input type="button" id="baocun"   value="保存" class="btn"><input type="hidden" value="${clientPlan.plaId} "/> </td>
				
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>  
	</div>
</html> 