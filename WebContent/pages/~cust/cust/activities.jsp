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
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path %>/js/jquery-1.8.3.js"></script>

<script type="text/javascript">

$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});
  $(".xiugai").click(function(){
	  location.href="<%=path%>/pages/~sale/edit.jsp";
  });
  //删除数据
  $(".shanchu").click(function(){
	  	//得到删除标签下一个标签的值
	  	var id=$(this).next().val();
	  	var flag=confirm("确定删除编号为："+id+"的信息吗？");
	  	if(flag){
	  		//删除使用Ajax的方式
	  		var $tr=$(this).parent().parent();//父节点的父节点
	  		var url="pages/cActivity-delete?clientActivity.atvId="+id;
	  		$.post(url,function(date){
	  			if(date=="1"){
	  				alert("删除成功！");
	  				$tr.remove();
	  			}else{
	  				alert("删除失败！");
	  			}
	  		});
	  	}
  });
});
//模糊查询提交表单
function search() {
	$('#fuzzySearch').submit();
}
</script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li></li>
    <li>客户管理</li>
    <li>客户信息管理</li>
    <li>客户信息</li>
    <li>交往记录</li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
    	<!-- cActivity-doAdd?clientManage.manId=${clientManage.manId } -->
        <li onclick="javacript:window.location='<%=path %>/pages/~cust/cust/activities_add.jsp?id=${clientManage.manId}'"><span><img src="<%=path %>/images/right/t01.png" /></span>新建</li>
        <li onclick="javacript:history.back();"><span><img src="<%=path %>/images/right/t12.png" /></span>返回</li>
        </ul>
        <form action="<%=path %>" id="fuzzySearch" method="post">
	        <table>
	        	<tr>
	        		<td class="dftr">客户编号</td>
	        		<td class="dfinput">${clientManage.manSerial}</td>
	        		<td class="dftr">客户名称</td>
	        		<td class="dfinput">${clientManage.manName}</td>
	        	</tr>
	        </table>
        </form>
    
    </div>   
    <table class="tablelist" >
    	<thead>
    	<tr>
        <th>时间</th>
        <th>地点</th>
        <th>概要</th>
        <th>详细信息</th>
        <th>备注</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
       	<s:if test="null == request.Activitylist || request.Activitylist.size() < 1">
	        <tr>
	        	<td colspan="6" align="center">无联系人信息</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator value="request.Activitylist" status="status">
       		<tr>
	        <td>${atvTime }</td>
	        <td>${atvPlace }</td>
	        <td>${atvTitle }</td>
	        <td>${atvDesc }</td>
	        <td>${atvComment }</td>
	        <td> 
	        	<img src="<%=path %>/images/right/t02.png"  alt="修改" title="修改" onclick="javascript:window.location='pages/cActivity-doUpdate?clientActivity.atvId=${atvId}'"></img>  
	        
	        	<img src="<%=path %>/images/right/t03.png" alt="删除" title="删除" class="shanchu"></img>
	        	<input type="hidden" value="${atvId }">
	        	</td>   
	        </tr>
	        </s:iterator>
    	</s:else>
        </tbody>
    </table>
   
	
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>