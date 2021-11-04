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
	  var id = $(this).next().val();
	  location.href="<%=path%>/pages/mchance-dispatch?marketChance.chcId="+id;
  });
  
  $(".xiugai").click(function(){
	  var id = $(this).next().val();
		 //alert(id);//?MarketChance.chcId="+id
		 location.href="<%=path%>/pages/mchance-doupdate.action?marketChance.chcId="+id;
  });
  
  //删除数据
  $(".shanchu").click(function(){
	  //得到chcId标签中的下一个标签的值
		 var chcId=$(this).next().val();
		 var flag = confirm("确定要删除编号："+chcId+"的信息吗？");
		 if (flag) {
				//删除，用ajax的方式
				var $tr = $(this).parent().parent();//调用父节点
				//通过调用Action的方法并且代值
				var url = "pages/mchance-delete?marketChance.chcId="+chcId;
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
    <li>营销管理</li>
    <li>销售机会管理</li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click" onclick="javascript:window.location='<%=path%>/pages/mchance-add'"><span><img src="<%=path%>/images/right/t01.png" /></span>添加</li>
        <li class="click" onclick="search()"><span><img src="<%=path %>/images/right/t06.png" /></span>查询</li>
        </ul>
        <form action="<%=path %>/pages/mchance-doSearch.action?fuzzySearch=fuzzy" id="fuzzySearch" method="post">
	        <table>
	        	<tr>
	        		<td class="dftr">客户名称</td>
	        		<td><input name="marketChance.chcManName" type="text" class="dfinput"/></td>
	        		<td class="dftr">概要</td>
	        		<td><input name="marketChance.chcTitle" type="text" class="dfinput"/></td>
	        	</tr>
	        </table>
        </form>
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>编号<i class="sort"><img src="<%=path %>/images/right/px.gif" /></i></th>
        <th>客户名称</th>
        <th>联系人</th>
        <th>公司电话</th>
        <th>概要</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
       	<s:if test="null == page || null == page.list || page.list.size<1">
	        <tr>
	        <td colspan="6" align="center">无销售机会信息</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator var="marketChance" value="page.list" status="status">
        	
        	<s:if test="#marketChance.chcStatus == '未指派'"> 
       		<tr>
	        <td>${chcId }</td>
	        <td>${chcManName }</td>
	        <td>${chcLinkman }</td>
	        <td>${chcTel }</td>
	        <td>${chcTitle }</td>
	        <td> 
	        	<s:if test="#session.right2 == 2">
	        	<img src="<%=path %>/images/right/t07.png"  alt="指派" title="指派" class="zhipai"></img>
	        	<input type="hidden" value="${chcId }"/>  
	        	</s:if>
	        	<img src="<%=path %>/images/right/t02.png"  alt="修改" title="修改" class="xiugai"></img>
	        	<input type="hidden" value="${chcId }"/> 
	        	<s:if test="#session.right3 == 3 || #marketChance.createMan == #session.sysUser.usrId">
	        	<!-- <img src="<%=path %>/images/right/t03.png" alt="删除" title="删除" class="shanchu"></img>
	        	<input type="hidden" value="${chcId }"/>   -->
	        	</s:if>
	        </td>       
	        </tr>
	       </s:if>
	        </s:iterator>
    	</s:else>
        </tbody>
    </table>
	<%-- <s:property value="#session.sysUser.usrId"/> --%>
    <s:include value="../page.jsp"></s:include>
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>