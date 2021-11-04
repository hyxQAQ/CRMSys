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
//客户等级名称
function byRankName(){
	var name=document.getElementById("Name").value;
	var rname=document.getElementById("rName");
	if(name==null||name==""){
		rname.innerHTML="等级名称不可以为空！";
		return false;
	}else{
		rname.innerHTML="*";
		return true;
	};
}
//提交表单的方法
function  checkAll(){
	if(byRankName()==true){
		return true;
	}else{
		alert("信息不完整！");
		return false;
	}
};

</script>
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li>基础数据</li>
			<li>客户等级管理</li>
			<li>新建客户等级</li>
		</ul>
	</div>
	<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>
		<div class="clear"></div>
		<form action="<%=path%>/pages/cRank-doAdd" method="post" onsubmit="return checkAll();">
			<ul class="forminfo" style="margin-left: 10px;">
				<li><input name="" type="button" class="btn" value="返回"
					onclick="history.back();" /></li>
				<li><input name="" type="submit" class="btn" value="保存" /></li>
			</ul>
			<div class="clear"></div>
			<table>
				<tr>
					<td class="dftr" style="width: 300px;">值：</td>
					<td><input type="text" name="clientRank.rkName"
						class="dfinput" id="Name" onblur="byRankName()" /><i id="rName">*</i></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>