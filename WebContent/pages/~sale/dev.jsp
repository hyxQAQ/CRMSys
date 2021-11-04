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

  $(".project").click(function(){
	  var id = $(this).next().val();
	  location.href="<%=path %>/pages/cPlan-doGetClientPlan.action?clientPlan.plaId="+id;
  });
  
  $(".project1").click(function(){
	  var id = $(this).next().val();
	  location.href="<%=path %>/pages/cPlan-executePlan.action?clientPlan.plaId="+id;
  });
  
  $(".chakan").click(function(){
	  var id = $(this).next().val();
	  location.href="<%=path %>/pages/cPlan-doGetChaKanClientPlan.action?clientPlan.plaId="+id;
  });
   
});

//模糊查询提交表单
function search() {
	$('#fuzzySearch').submit();
}
</script>
</head>
<body >
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li></li>
    <li>营销管理</li>
    <li>客户开发计划</li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click" onclick="search()"><span><img src="<%=path %>/images/right/t06.png" /></span>查询</li>
        <!-- <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li> -->
        </ul>
        <form action="<%=path %>/pages/cPlan-doSearch.action?fuzzySearch=fuzzy" id="fuzzySearch" method="post" >
	        <table>
	        	<tr>
	        		<td class="dftr">客户名称</td>
	        		<td><input name="marketChance.chcManName" type="text" class="dfinput3"/></td>
	        		<td class="dftr">负责人</td>
	        		<td><input name="marketChance.chcLinkman" type="text" class="dfinput3"/></td>
	        		<td class="dftr">概要</td>
	        		<td><input  name="marketChance.chcTitle" type="text" class="dfinput3"/></td>
	        	</tr>
	        </table>
        </form>
        
    <!--     <ul class="toolbar1">
        <li><span><img src="../../images/right/t05.png" /></span>设置</li>
        </ul> -->
    	
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>编号<i class="sort"><img src="<%=path %>/images/right/px.gif" /></i></th>
        <th>客户名称</th>
        <th>负责人</th>
        <th>公司电话</th>
        <th>状态</th>
        <th>概要</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <s:if test="null == page || null == page.list || page.list.size<1">
	        <tr>
	        <td colspan="7" align="center">无客户计划信息</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator value="page.list" status="status">
	        <tr>
	        <td>${plaId }</td>
	        <td>${marketChance.chcManName }</td>
	        <td>${marketChance.chcLinkman }</td>
	        <td>${marketChance.chcTel }</td>
	        <td>${marketChance.chcStatus }</td>
	        <td>${marketChance.chcTitle }</td>
	        <td> 
	        	<s:if test="'已归档' != marketChance.chcStatus && (#session.right6 == 6 || #marketChance.createMan == #session.sysUser.usrId)">
	        	<img src="<%=path %>/images/right/t14.png"  title="制定计划" class="project" />
	        	<input type="hidden" value="${plaId } " />
	        	<img src="<%=path %>/images/right/t15.png" alt="执行计划" title="执行计划" class="project1"/>
	        	<input type="hidden" value="${plaId } " />
	        	</s:if>
	        	<img src="<%=path %>/images/right/t08.png" alt="查看" title="查看" class="chakan"/>
	        	<input type="hidden" value="${plaId } "/>
	        	<s:if test="'已归档' == marketChance.chcStatus">
	        	<img src="<%=path %>/images/right/t13.png" alt="开发成功" title="开发成功" />
	        	</s:if>
	        </td>
	        </tr> 
	        </s:iterator>
        </s:else>
        </tbody>
    </table>  
    	<s:include value="../page.jsp"></s:include>
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>