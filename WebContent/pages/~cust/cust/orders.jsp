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
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

  $(".zhipai").click(function(){
	  location.href="<%=path%>/pages/~sale/dispatch.jsp";
  });
  
  $(".xiugai").click(function(){
	  location.href="<%=path%>/pages/~sale/edit.jsp";
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
    <li>历史订单</li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li onclick="history.back();"><span><img src="<%=path %>/images/right/t12.png" /></span>返回</li>
        </ul>
        <form action="<%=path %>" id="fuzzySearch" method="post">
	        <table>
	        	<tr>
	        		<td class="dftr">客户编号</td>
	        		<td class="dfinput">${clientManage.manSerial }</td>
	        		<td class="dftr">客户名称</td>
	        		<td class="dfinput">${clientManage.manName }</td>
	        	</tr>
	        </table>
        </form>
    
    </div>   
    <table class="tablelist" >
    	<thead>
    	<tr>
        <th>订单编号</th>
        <th>日期</th>
        <th>送货地址</th>
        <th>状态</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
       	<s:if test="null == page || null == page.list || page.list.size<1">
	        <tr>
	        	<td colspan="5" align="center">无订单信息</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator value="page.list" status="status">
       		<tr>
	        <td>${odrId }</td>
	        <td>${odrDate }</td>
	        <td>${odrAddr }</td>
	        <td>${odrStatus }</td>
	        <td><img src="<%=path %>/images/right/t08.png"  alt="查看明细" title="查看明细" 
	        onclick="javascript:window.location='<%=path %>/pages/orders-queryOrders?orders.odrId=${odrId }'"></img></td>       
	        </tr>
	        </s:iterator>
    	</s:else>
        </tbody>
    </table>
   	<s:include value="../../page.jsp"></s:include>

    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>