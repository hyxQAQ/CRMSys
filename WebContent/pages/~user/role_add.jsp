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
<script type="text/javascript" src="<%=path %>/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	  $(".click").click(function(){
	  $(".tip").fadeIn(200);
	  });
	  
	  //全选
	  $("#checkAll").click(function(){
		  $(":checkbox").attr("checked",true);
	  });
	  
	  //全不选
	  $("#cancelAll").click(function(){
		  $(":checkbox").attr("checked",false);
	  });
	  
	  //每个小模块的复选框的全选和全不选
	  $("dt input").click(function(){
		  var ck = $(this).attr("checked");
		  if (ck == 'checked') {
		 	$(this).parent().nextAll().children().attr("checked",true);
		  } else {
			$(this).parent().nextAll().children().attr("checked",false);
		  }
	  });
	  
	  //
	  $("dd input").click(function(){
		  var $dd = $(this).parent().siblings();
		  var length = $dd.length;
		  var flag = true;
		  for (var i = 1; i < length; i++) {
			 if($dd[i].firstChild.nextSibling.checked) {
				 continue;
			 } else {
				 flag = false;
				 break;
			 }
		}
		var flag2 = $(this).attr("checked");
		if (flag && flag2 == 'checked') {
			$dd[0].firstChild.nextSibling.checked=true;
		} else {
			$dd[0].firstChild.nextSibling.checked=false;
		}
	  });
	  
	  //验证角色名是否重复
	  $("#rolename").blur(function(){
		  var name = $(this).val();
		  var msg = $("#msg");
		  msg.css("color",'red');
		  if (name != "" && name != null) {
			  var url = "pages/sRole-checkRoleName";
			  var data = {"sysRole.roleName":name};
			  $.post(url,data,function(data){
				  if (data == 1) {
					  msg.html("角色名已存在");
				  } else {
					  msg.html("角色名可用");
					  msg.css("color",'green');
				  }
			  });
		  } else {
			  msg.html("角色名不能为空");
		  }
	  });
	  
});	  
</script>
<style type="text/css">
li { margin-left:10px;}
dd {margin-left: 15px;}
.dftr1{height: 23px;width: 35px; background-color: #C4F4F2;}
.dftr2{height: 23px;width: 50px; background-color: #C4F4F2;}
</style>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>权限管理</li>
    <li>角色管理</li>
    <li>添加角色</li>
    </ul>
    </div>
    <div class="formbody">
    	<div class="clear"></div>
    	<form action="sRole-add" method="post">
    	<ul class="forminfo" style="margin-left: 20px;">
	     	 <li><input name="" type="submit" class="btn" value="保存"/></li>
	     	 <li><input name=""  type="button" class="btn" value="返回" onclick="history.back();"/></li>
	    </ul>
	     <div class="clear"></div>
	    
	      <table>
	    	<tr>
	    		<td class="dftr" >用户名:</td>
	    		<td ><input name="sysRole.roleName" type="text" class="dfinput" id="rolename"><i>*</i></td>
	   			<td class="dftr" ><span id="msg"></span></td>
	   			<td class="dftr"></td>
	   			<td class="dftr"></td>
	   			
	   		</tr>
	   		<tr class="dftr" style="height: 430px;">
	   			<td><span >指定权限</span></td>
	   			<td style="background-color:#ECECEC;text-align: left;vertical-align: top;" colspan="5">
	   				<dl>
	   						<dt>   营销管理<input type="checkbox"  /></dt>
	   						<dd>销售机会管理<input type="checkbox" name="right" value="1" /></dd>
	   						<dd>客户开发计划<input type="checkbox" name="right" value="5" /></dd>	
	   				</dl>
	   				<dl>
	   					    <dt>  客户管理<input type="checkbox" /></dt>
	   						<dd>客户信息管理<input type="checkbox" name="right"  value="8"/></dd>
	   						<dd>客户流失管理<input type="checkbox" name="right"  value="13"/></dd>	
	   				</dl>
	   				<dl>
	   					    <dt>服务管理<input type="checkbox" value="" /></dt>
	   						<dd>服务创建<input type="checkbox" name="right"  value="16"/></dd>
	   						<dd>服务分配<input type="checkbox" name="right"  value="17"/></dd>	
	   						<dd>服务处理<input type="checkbox" name="right" value="18"/></dd>
	   						<dd>服务反馈<input type="checkbox" name="right" value="20"/></dd>	
	   						<dd>服务归档<input type="checkbox" name="right" value="22"/></dd>
	   				</dl>
	   				<dl>
	   					    <dt>统计报表<input type="checkbox" value=""/></dt>
	   						<dd>客户贡献分析<input type="checkbox" name="right" value="23"/></dd>
	   						<dd>客户构成分析<input type="checkbox" name="right" value="24"/></dd>	
	   						<dd>客户服务分析<input type="checkbox" name="right" value="25"/></dd>
	   						<dd>客户流失分析<input type="checkbox" name="right" value="26"/></dd>	
	   				</dl>
	   				<dl>
	   					    <dt>基础数据<input type="checkbox" /></dt>
	   						<dd>客户等级管理<input type="checkbox" name="right" value="27"/></dd>
	   						<dd>服务类型管理<input type="checkbox" name="right" value="28"/></dd>	
	   						<dd>客户地区管理<input type="checkbox" name="right" value="29"/></dd>
	   						<dd>查询产品信息<input type="checkbox" name="right" value="30"/></dd>	
	   						<dd>查询库存<input type="checkbox" name="right" value="31"/></dd>	
	   				</dl>
	   				<dl>
	   					    <dt>权限管理<input type="checkbox" /></dt>
	   						<dd>用户管理<input type="checkbox" name="right" value="32"/></dd>
	   						<dd>角色管理<input  type="checkbox" name="right" value="33"/></dd>
	   				</dl>   				
	   			</td>
	   		</tr>
	   		<tr style="height:30px;">
	   			<td style="background-color: #CFCBFE;text-align:center;" colspan="5">
	   				<input type="button" id="checkAll" value="全选" class="dftr1"/>
	   				<input type="button" id="cancelAll" value="全不选" class="dftr2"/>
	   			</td>		
	   		</tr>	 		
	   	  </table>
	   	 </form>
    </div>
</body>
</html>