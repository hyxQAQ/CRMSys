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
		  
		  $(".xiugai2").click(function(){
			  location.href="<%=path%>/pages/cManage-doUpdate";
		  });
		  
			//删除数据
		  $(".shanchu").click(function(){
		  	  //得到chcId标签中的下一个标签的值
		  		 var id= $(this).next().val();
		  		 var flag = confirm("确定要删除序号为:"+id+"的所有信息吗？");
		  		 if (flag) {
		  				//删除，用ajax的方式
		  				var $tr = $(this).parent().parent();//调用父节点
		  				//通过调用Action的方法并且代值
		  				var url = "pages/cManage-delete?clientManage.manId="+id;
		  				$.post(url, function(data){
		  					if (data == "1") {
		  						alert("删除成功！");
		  						$tr.remove();
		  					} else {
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
    <li>客户管理</li>
    <li>客户信息管理</li>
    </ul>
    </div>
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click" onclick="search()"><span><img src="<%=path %>/images/right/t06.png" /></span>查询</li>
        <!-- <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li> -->
        </ul>
        <form action="<%=path %>/pages/cManage-doSearch?fuzzySearch=fuzzy" id="fuzzySearch" method="post">
	        <table>
	        	<tr>
	        		<td class="dftr">客户编号</td>
	        		<td><input name="clientManage.manSerial" type="text" class="dfinput3"/></td>
	        		<td class="dftr">客户名称</td>
	        		<td><input name="clientManage.manName" type="text" class="dfinput3"/></td>
	        		<td class="dftr">地区</td>
	        		<td class="dfinput3"><s:select list="request.districtList" listKey="dsId" listValue="dsName" headerKey="0" headerValue="请选择" name="dsId"></s:select></td>
	        		
	        	</tr>
	        	<tr>
	        		<td class="dftr">客户经理/负责人</td>
	        		<td><input name="sysUser.usrName" type="text" class="dfinput3"/></td>
	        		<td class="dftr">客户等级</td>
	        		<td class="dfinput3"><s:select list="request.clientRankList" listKey="rkId" listValue="rkName" headerKey="0" headerValue="请选择" name="rkId"></s:select></td>
	        	</tr>
	        </table>
        </form>
    
    </div>   
    <table class="tablelist" style="margin-top: 40px;">
    	<thead>
    	<tr>
        <th>序号<i class="sort"><img src="<%=path %>/images/right/px.gif" /></i></th>
        <th>客户名称</th>
        <th>客户编号</th>
        <th>地区</th>
        <th>客户经理/负责人</th>
        <th>客户等级</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
       	<s:if test="null == page || null == page.list || page.list.size<1">
	        <tr>
	        	<td colspan="7" align="center">无客户信息</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator value="page.list" status="status">
       		<tr>
	        <td>${manId}</td>
	        <td>${manName }</td>
	        <td>${manSerial }</td>
	        <td>${district.dsName }</td>
	        <td>${sysUser.usrName }</td>
	        <td>${clientRank.rkName }</td>
	        <td> 
	        	
	        	<img src="<%=path %>/images/right/t02.png" alt="修改" title="修改" class="xiugai" onclick="javacript:window.location='<%=path%>/pages/cManage-doUpdate?clientManage.manId=${manId }'"></img>
				<img src="<%=path %>/images/right/t11.png" alt="联系人" title="联系人" onclick="javacript:window.location='<%=path%>/pages/cLinkMan-findLinkMan?clientManage.manId=${manId }'"></img> 
				<img src="<%=path %>/images/right/t10.png" alt="交往记录" title="交往记录" onclick="javacript:window.location='<%=path%>/pages/cActivity-findActivty?clientManage.manId=${manId}'"></img>
				<img src="<%=path %>/images/right/t08.png" alt="历史订单" title="历史订单" onclick="javascript:window.location='<%=path %>/pages/orders-findOrders?clientManage.manId=${manId }'"></img>
				<!-- <img src="<%=path %>/images/right/t03.png" alt="删除" title="删除" class="shanchu"></img>
				<input type="hidden" value="${manId}"/> -->
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