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
  
  $(".longxiugai").click(function(){
		//得到一个隐藏ID，下的下一个值
		var lstId=$(this).next().val();
		//alert(lstId);
		//设置绝对路径得到Action
		location.href="<%=path %>/pages/cLost-dogetVal?clientLost.lstId="+lstId;
	});
	$(".nowlost").click(function(){
		//得到一个隐藏ID，下的下一个值
		var lstId=$(this).next().val();
		//设置绝对路径得到Action
		location.href="<%=path %>/pages/cLost-dogetVals?clientLost.lstId="+lstId;
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
    <li>客户管理</li>
    <li>客户流失管理</li>
    </ul>
    </div>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click" onclick="search()"><span><img src="<%=path %>/images/right/t06.png" /></span>查询</li>
        <!-- <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li> -->
        </ul>
        <form action="<%=path %>/pages/cLost-doSearch?fuzzySearch=fuzzy" id="fuzzySearch" method="post">
	        <table>
	        	<tr>
	        		<td class="dftr">客户名称</td>
	        		<td><input name="clientLost.lstName" type="text" class="dfinput3"/></td>
	        		<td class="dftr">客户经理</td>
	        		<td><input name="sysUser.usrName" type="text" class="dfinput3"/></td>
	        		<td class="dftr">状态</td>
	        		<td class="dfinput3"><select name="clientLost.lstStatus">
	        			<option value="">请选择</option>
	        			<option value="警告">警告</option>
	        			<option value="已流失">已流失</option>
	        			<option value="暂缓流失">暂缓流失</option>
	        		</select></td>
	        		
	        	</tr>
	        </table>
        </form>
    
    </div>   
    <table class="tablelist" >
    	<thead>
    	<tr>
        <th>编号<i class="sort"><img src="<%=path %>/images/right/px.gif" /></i></th>
        <th>客户名称</th>
        <th>客户经理</th>
        <th>上次下单时间</th>
        <th>确认流失时间</th>
        <th>状态</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
       	<s:if test="null == page || null == page.list || page.list.size<1">
	        <tr>
	        	<td colspan="7" align="center">无客户流失信息</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator value="page.list" status="status">
       		<tr>
	        <td>${lstId}</td>
	        <td>${lstName }</td>
	        <td>${sysUser.usrName }</td>
	        <td>${lstLastOrderDate }</td>
	        <td>${lstLostDate }</td>
	        <td>${lstStatus }</td>
	        <td> 
	        	<s:if test="#session.sysUser.sysoRole.roleId == 2">
	        	<img src="<%=path %>/images/right/t13.png" alt="确认流失" title="确认流失" class="nowlost" ></img>
				<!-- 创建一个隐藏ID，用于传值获取Action里面给的值，和给ID -->
				<input type="hidden" value="${lstId}" />
				<img src="<%=path %>/images/right/t05.png" alt="暂缓流失" title="暂缓流失" class="longxiugai"></img> 
        		<!-- 创建一个隐藏ID，用于传值获取Action里面给的值，和给ID -->
        		<input type="hidden" value="${lstId}" />
        		</s:if>
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