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
<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	  $(".click").click(function(){
	  $(".tip").fadeIn(200);
	  });
	  
	//点击处理触发的事件
	  $(".chuli").click(function(){
	 		  //得到该对象下一个对象的值
	 		 var id=$(this).next().val();
	 		  //alert(id);
	 		  location.href="<%=path%>/pages/cService-doFeedBack?clientService.svrId="+id;
	 	  });  
});	
//模糊查询提交表单
function search() {
	$('#fuzzySearch').submit();
}
</script>
<style type="text/css">
li {
	margin-left: 5px;
}

.dfinput4 {
	background-image: url("../images/right/btn_bg2.jpg") repeat-x;
	text-indent: 10px;
	border-top: solid 1px #a7b5bc;
	border-left: solid 1px #a7b5bc;
}
</style>
</head>
<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li>客户服务管理</li>
			<li>服务反馈</li>
		</ul>
	</div>
	<div class="formbody">
		<div class="clear"></div>
		<ul class="toolbar">
			<li class="click" onclick="search()"><span><img
					src="<%=path%>/images/right/t06.png" /></span>查询</li>
		</ul>
		<form action="cService-doSearch?fuzzySearch=fuzzy" id="fuzzySearch"
			method="post">
			<table>
				<tr>
					<td class="dftr">客户</td>
					<td><input name="clientService.svtNmae" type="text"
						class="dfinput3" /></td>
					<td class="dftr">概要</td>
					<td><input name="clientService.svrTitle" type="text"
						class="dfinput3" /></td>
					<td class="dftr">服务类型</td>
					<td><s:select list="typeList" listKey="stId" listValue="stName" headerKey="0" headerValue="请选择" name="serviceType.stId"></s:select></td>
				</tr>
				<tr>
	        		<td>
						<input type="hidden" name="status" value="3" />		
					</td> 
	        	</tr>
			</table>
		</form>
		<div class="clear"></div>
		<table class="tablelist" style="margin-top: 10px;">
			<thead>
				<tr>
					<th>编号<i class="sort"><img
							src="<%=path%>/images/right/px.gif" /></i></th>
					<th>客户</th>
					<th>概要</th>
					<th>服务类型</th>
					<th>创建人</th>
					<th>创建日期</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<s:if test="null == page || null == page.list || page.list.size<1">
					<tr>
						<td colspan="7" align="center">无服务反馈信息</td>
					</tr>
				</s:if>
				<s:else>
					<s:iterator var="clientService" value="page.list" status="status">
						<tr>
							<td>${svrId }</td>
							<td>${svtNmae }</td>
							<td>${svrTitle }</td>
							<td>${svrType.stName }</td>
							<td>${svrCreateName }</td>
							<td>${svrCreateDate }</td>
							<td>
							<s:if test="#session.sysUser.usrId == #clientService.sysUser.usrId">
							<img src="/CRMSys/images/right/t05.png" class="chuli"
								alt="处理" title="处理" /> <input type="hidden" value="${svrId }">
							</s:if>
							</td>
							
						</tr>
					</s:iterator>
				</s:else>
			</tbody>

		</table>

	</div>
	<s:include value="../../page.jsp"></s:include>
	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>