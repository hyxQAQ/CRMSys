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
  
  //删除数据
	$(".shanchu").click(function(){
		//得到当前对象的下一个标签的值
		 var id=$(this).next().val();
		 var flag = confirm("确定要删除编号："+id+"的信息吗?");
		 if(flag){
			 //用ajax方式删除
			 var $tr=$(this).parent().parent();//调用父节点
			//通过调用Action的方法并且代值
			var url="pages/district-delete?district.dsId="+id;
			 $.post(url, function(data){
				 if (data == "1") {
						alert("删除成功！");
						$tr.remove();
					} else {
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
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>基础数据</li>
    <li>客户地区管理</li>
    </ul>
    </div>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
    	<li onclick="javascript:window.location='<%=path%>/pages/~basd/dist_add.jsp'"><span><img src="<%=path %>/images/right/t01.png" /></span>新增</li>
        <li class="click" onclick="search()"><span><img src="<%=path %>/images/right/t06.png" /></span>查询</li>
        <!-- <li><span><img src="<%=path %>/images/t04.png" /></span>统计</li> -->
        </ul>
        <form action="<%=path %>/pages/district-doSearch?fuzzySearch=fuzzy" id="fuzzySearch" method="post" onsubmit="return checkNum()">
	        <table>
	        	<tr>
	        		<td class="dftr">编号</td>
	        		<td><input name="district.dsId" type="text" class="dfinput3" id="num" onblur="checkNum()"/></td>
	        		<td class="dftr">值</td>
	        		<td><input name="district.dsName" type="text" class="dfinput3"/></td>
	        	</tr>
	        </table>
        </form>
    </div>   
    <table class="tablelist" >
    	<thead>
    	<tr>
        <th>编号<i class="sort"><img src="<%=path %>/images/right/px.gif" /></i></th>
        <th>值</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
       	<s:if test="null == page || null == page.list || page.list.size<1">
	        <tr>
	        	<td colspan="3" align="center">无客户地区信息</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator value="page.list" status="status">
       		<tr>
	        <td>${dsId}</td>
	        <td>${dsName }</td>
	        <td> 
	        	<img src="<%=path %>/images/right/t02.png" alt="修改" title="修改" class="xiugai" onclick="javacript:window.location='<%=path%>/pages/district-update?district.dsId=${dsId }'"></img>
				<img src="<%=path %>/images/right/t03.png" alt="删除" title="删除" class="shanchu"></img>
				<input type="hidden" value="${dsId}"/> 
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