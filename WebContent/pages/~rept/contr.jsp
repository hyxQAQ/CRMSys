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

  $("#graph").toggle(
		  function(){
			  $("#graphpie").show("normal");
		  },
		  function(){
			  $("#graphpie").hide("normal");
		  }
  );
  
 
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
    <li>统计报表</li>
    <li>客户贡献分析</li>
    </ul>
    </div>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
       	<li class="click" id="graph" ><span><img src="<%=path %>/images/right/t04.png" /></span>统计</li>
       	<li class="click" onclick="javascript:window.location='<%=path %>/pages/cManage-downloadExcel.action?judge=0'" ><span><img src="<%=path %>/images/right/t16.png" /></span>Excel</li>
       	<li class="click" onclick="javascript:window.location='<%=path %>/pages/cManage-downloadPdf.action?judge=0'" ><span><img src="<%=path %>/images/right/t17.png" /></span>Pdf文件</li>
       	<li class="click" onclick="search()"><span><img src="<%=path %>/images/right/t06.png" /></span>查询</li>
        </ul> 
        <form action="<%=path %>/pages/cManage-QueryClientDevote?fuzzySearch=fuzzy" id="fuzzySearch" method="post">
	        <table>
	        	<tr>
	        		<td class="dftr">客户名称</td>
	        		<td ><input name="clientDevote.manName" type="text" class="dfinput" /></td>
	        	</tr>
	        </table>
        </form>
    </div>   
    <table class="tablelist" >
    	<thead>
    	<tr>
        <th>编号<i class="sort"><img src="<%=path %>/images/right/px.gif" /></i></th>
        <th>客户名称</th>
        <th>订单金额（元）</th>
        </tr>
        </thead>
        <tbody>
       	<s:if test="null == page || null == page.list || page.list.size<1">
	        <tr>
	        	<td colspan="3" align="center">无客户贡献数据</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator value="page.list" status="status">
       		<tr>
	        <td>${manId}</td>
	        <td>${manName }</td>
	        <td>${totalMoney }</td>
	        </s:iterator>
    	</s:else>
        </tbody>
    </table>
    <s:include value="../page.jsp"></s:include>

    </div>
   	<!-- <div class="clear" ></div> -->
   	<table style="display: none; margin-left: 180px;" id="graphpie" >
   		<tr>
   			<td><img src="<%=path %>/pages/cManage-chartClientDevotePie.action" /></td>
   		</tr>
   	</table> 
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>