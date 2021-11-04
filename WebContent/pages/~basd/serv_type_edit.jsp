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
<style type="text/css">
li { margin-left: 5px;}
</style>
<script type="text/javascript">
	function checkName(){
		var name=document.getElementById("sname").value;
		var rname=document.getElementById("rname");
		if(name==""||name==null){
			rname.innerHTML="服务类型不能为空";
			return false;
		}else{
			rname.innerHTML="*";
			return true;
		}
	}
	function checkAll(){
		if(checkName()){
			return true;
		}else{
			return false;
		}
	}
</script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>基础数据</li>
    <li>服务类型管理</li>
    <li>编辑服务类型</li>
    </ul>
    </div>
    <div class="formbody">
    
    	<div class="formtitle"><span>基本信息</span></div>
    	<div class="clear"></div>
    	<form action="pages/sType-update?serviceType.stId=${serviceType.stId }" method="post">
    	<ul class="forminfo" style="margin-left: 10px;">
    		 <li><input name="back" type="button" class="btn" value="返回" onclick="history.back();"/></li>
	     	 <li><input name="save" type="submit" class="btn" value="保存" onclick="return checkAll()"/></li>
	    </ul>
	    <div class="clear"></div>
        <table>
	    	<tr>
	    		<td class="dftr" style="width: 300px;">值：</td>
	    		<td ><input type="text" class="dfinput" name="serviceType.stName" id="sname" value="${serviceType.stName }" onblur="checkName()"/><i id="rname">*</i></td>
	    	</tr>
	    </table>
	    </form>
    </div>
</body>
</html>