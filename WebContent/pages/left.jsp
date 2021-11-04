<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String jump = request.getParameter("jump");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
<%if (jump != null) { %>
<style type="text/css">
.leftmenu dd:nth-child(3) .menuson{display:block;}
</style>
<%} %>
<style type="text/css">
.leftmenu dd:first-child .menuson{display:none;}
</style>

<script type="text/javascript" src="<%=path %>/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
$(function(){	
 	//导航切换
	 $(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active");
		$(this).addClass("active");
	}); 
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	}); 
});	
</script>
</head>
<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>客户关系管理系统</div><s:property value="#%{#parameters.jump}"/>
    <dl class="leftmenu">   
    <dd>
	    <div class="title">
	    <span><img src="<%=path %>/images/left/leftico01.png" /></span>营销管理
	    </div>
    	<ul class="menuson">
    		<s:if test="#session.right1 == 1">
	        <li class="active1"><cite></cite><a href="<%=path %>/pages/mchance-doSearch.action?fuzzySearch=init" target="rightFrame">销售机会管理</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right5 == 5">
	        <li ><cite></cite><a href="<%=path %>/pages/cPlan-doSearch.action" target="rightFrame">客户开发计划</a><i></i></li>
      		</s:if>
       </ul>    
    </dd>
    <dd>
	    <div class="title">
	    <span><img src="<%=path %>/images/left/leftico02.png" /></span>客户管理
	    </div>
	    <ul class="menuson">
	    	<s:if test="#session.right8 == 8">
	        <li><cite></cite><a href="<%=path %>/pages/cManage-doSearch?fuzzySearch=init" target="rightFrame">客户信息管理</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right13 == 13">
	        <li><cite></cite><a href="<%=path %>/pages/cLost-doSearch?fuzzySearch=init" target="rightFrame">客户流失管理</a><i></i></li>
	     	</s:if>
	     </ul>     
    </dd> 
    <dd>
	    <div class="title">
	    	<span><img src="<%=path %>/images/left/leftico03.png" /></span>服务管理
	    </div>
	    <ul class="menuson">
	    	<s:if test="#session.right16 == 16">
	        <li><cite></cite><a href="<%=path %>/pages/cService-add" target="rightFrame">服务创建</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right17 == 17">
	        <li class="active"><cite></cite><a href="<%=path %>/pages/cService-doSearch?status=1"  target="rightFrame">服务分配</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right18 == 18">
	        <li ><cite></cite><a href="<%=path %>/pages/cService-doSearch?status=2"  target="rightFrame" >服务处理</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right20 == 20">
	        <li><cite></cite><a href="<%=path %>/pages/cService-doSearch?status=3"  target="rightFrame" >服务反馈</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right22 == 22">
	        <li><cite></cite><a href="<%=path %>/pages/cService-doSearch?status=4"  target="rightFrame" >服务归档</a><i></i></li>
	    	</s:if>
	    </ul>    
    </dd>  
    <dd>
	    <div class="title">
	    	<span><img src="<%=path %>/images/left/leftico04.png" /></span>统计报表
	    </div>
	    <ul class="menuson">
	    	<s:if test="#session.right23 == 23">
	        <li><cite></cite><a href="<%=path %>/pages/cManage-QueryClientDevote" target="rightFrame">客户贡献分析</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right24 == 24">
	        <li><cite></cite><a href="<%=path %>/pages/cManage-QueryClientConsist" target="rightFrame">客户构成分析</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right25 == 25">
	        <li><cite></cite><a href="<%=path %>/pages/cService-QueryServiceClient" target="rightFrame">客户服务分析</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right26 == 26">
	        <li><cite></cite><a href="<%=path %>/pages/cLost-findLostClient" target="rightFrame">客户流失分析</a><i></i></li>
	    	</s:if>
	    </ul>
    </dd>
    <dd>
	    <div class="title">
	    	<span><img src="<%=path %>/images/left/leftico05.png" /></span>基础数据
	    </div>
	    <ul class="menuson">
	    	<s:if test="#session.right27 == 27">
	        <li><cite></cite><a href="<%=path %>/pages/cRank-doSearch" target="rightFrame">客户等级管理</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right28 == 28">
	        <li><cite></cite><a href="<%=path %>/pages/sType-doSearch" target="rightFrame">服务类型管理</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right29 == 29">
	        <li><cite></cite><a href="<%=path %>/pages/district-doSearch" target="rightFrame">客户地区管理</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right30 == 30">
	        <li><cite></cite><a href="<%=path %>/pages/product-doSearch" target="rightFrame">查询产品信息</a><i></i></li> 
	        </s:if>
	        <s:if test="#session.right31 == 31">
	        <li><cite></cite><a href="<%=path %>/pages/storage-doSearch" target="rightFrame">查询库存</a><i></i></li>
	    	</s:if>
	    </ul>
    </dd>
    <dd>
	    <div class="title">
	    	<span><img src="<%=path %>/images/left/leftico06.png" /></span>权限管理
	    </div>
	    <ul class="menuson">
	    	<s:if test="#session.right32 == 32">
	        <li><cite></cite><a href="<%=path %>/pages/sUser-doSearch" target="rightFrame">用户管理</a><i></i></li>
	        </s:if>
	        <s:if test="#session.right33 == 33">
	        <li><cite></cite><a href="<%=path %>/pages/sRole-doSearch" target="rightFrame">角色管理</a><i></i></li>
	    	</s:if>
	    </ul>
    </dd>
    </dl>
</body>
</html>