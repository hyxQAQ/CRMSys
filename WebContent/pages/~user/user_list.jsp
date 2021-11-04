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
	  
	  //删除用户
	  $(".shanchu").click(function(){
		//得到当前对象的下一个标签的值
		var id=$(this).next().val();
		var flag=confirm("确定要删除编号："+id+"的信息吗?");
		if(flag){
			//用ajax方式删除
			var $tr=$(this).parent().parent();//调用父节点
			//通过调用Action的方法并且代值
			var url="pages/sUser-delete?sysUser.usrId="+id;
			$.post(url, function(data){
				if(data == "1"){
					alert("删除成功！");
					$tr.remove();
				}else{
					alert("删除失败！");
				}
			});
		}
		//取消超链接行为
		return false;
	  });
});	  

function checkNum() {
	var id = document.getElementById("num").value;
	if (!isNaN(id)) {
		return true;
	} else {
		alert("编号为整数");
		return false;	
	}
}


//模糊查询提交表单
function search() {
	$('#fuzzySearch').submit();
}
</script>
<style type="text/css">
li { margin-left:10px;}
</style>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>权限管理</li>
    <li>用户管理</li>
    </ul>
    </div>
    <div class="formbody">
    	<div class="clear"></div>
    	<ul class="toolbar">
        <li onclick="javascript:window.location='<%=path%>/pages/~user/sUser-add.action'"><span><img src="/CRMSys/images/right/t01.png" /></span>新建</li>
        </ul>
    	<ul class="toolbar">
    	<li class="click" onclick="search()"><span><img src="<%=path %>/images/right/t06.png" /></span>查询</li>
    	</ul>
    	<form action="<%=path %>/pages/sUser-doSearch?fuzzySearch=fuzzy" id="fuzzySearch"  method="post" onsubmit="return checkNum()">
    	 <table>
	        	<tr>
	        		<td class="dftr">编号</td>
	        		<td><input name="sysUser.usrId" type="text" class="dfinput3" id="num" onblur="checkNum()"/></td>
	        		<td class="dftr">用户</td>
	        		<td><input name="sysUser.usrName" type="text" class="dfinput3"/></td>
	        	</tr>
	     </table>
	    </form>
	    <div class="clear"></div>
        <table class="tablelist" style="margin-top: 40px;">
    	<thead>
    	<tr>
        <th>编号<i class="sort"><img src="<%=path %>/images/right/px.gif" /></i></th>
        <th>用户</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody> 
        <s:if test="null == page || null == page.list || page.list.size<1">
	        <tr>
	        	<td colspan="3" align="center">无用户信息</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator value="page.list" status="status"> 	
	        <tr>
	        <td>${usrId }</td>
	        <td>${usrName }</td>
	        <td> 
	        	<img src="/CRMSys/images/right/t02.png" alt="修改" title="修改" onclick="javascript:window.location='<%=path %>/pages/sUser-update?sysUser.usrId=${usrId}'"></img>
	        	<img src="/CRMSys/images/right/t03.png" alt="删除" title="删除" class="shanchu"></img>
	        	<input type="hidden" value="${usrId}"/> 
	        </td>
	        </tr>  
	    </s:iterator>
	    </s:else> 
        </tbody>

    </table>
    </div>
    <s:include value="../page.jsp"></s:include>  
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>