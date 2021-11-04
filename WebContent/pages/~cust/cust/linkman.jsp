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

  //删除数据
  $(".shanchu").click(function(){
	  //得到chcId标签中的下一个标签的值
		 var id= $(this).next().val();
	  	 var name = $(this).prev().val(); 
		 var flag = confirm("确定要删除联系人："+name+"的信息吗？");
		 if (flag) {
				//删除，用ajax的方式
				var $tr = $(this).parent().parent();//调用父节点
				//通过调用Action的方法并且代值
				var url = "pages/cLinkMan-delete?clientLinkman.lkmId="+id;
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
    <li></li>
    <li>客户管理</li>
    <li>客户信息管理</li>
    <li>客户信息</li>
    <li>联系人</li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li onclick="javacript:window.location='<%=path %>/pages/cLinkMan-doAdd?clientManage.manId=${clientManage.manId }'"><span><img src="<%=path %>/images/right/t01.png" /></span>新建</li>
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
        <th>姓名</th>
        <th>性别</th>
        <th>职位</th>
        <th>办公电话</th>
        <th>手机</th>
        <th>备注</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
       	<s:if test="null == request.linkManList || request.linkManList.size() < 1">
	        <tr>
	        	<td colspan="7" align="center">无联系人信息</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator value="request.linkManList" status="status">
       		<tr>
	        <td>${lkmName }</td>
	        <td>${lkmSex }</td>
	        <td>${lkmPostion }</td>
	        <td>${lkmTel }</td>
	        <td>${lkmMobile }</td>
	        <td>${lkmComment }</td>
	        <td> 
	        	<img src="<%=path %>/images/right/t02.png"  alt="修改" title="修改" onclick="javascript:window.location='pages/cLinkMan-doUpdate?clientLinkman.lkmId=${lkmId}'"></img>  
	        	<input type="hidden" value="${lkmName}">
	        	<img src="<%=path %>/images/right/t03.png" alt="删除" title="删除" class="shanchu"></img>
	        	<input type="hidden" value="${lkmId}">
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