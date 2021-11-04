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
	function countMoney() {
		var table = document.getElementById("orderline");
		var total = document.getElementById("total");
		var count = table.rows.length;
		var totalMoney = 0;
		for (var i = 1; i < count; i++) {
			var num = table.rows[i].cells[1].innerHTML;
			var unit = table.rows[i].cells[3].innerHTML;
			num = parseInt(num);
			unit = parseFloat(unit);
			table.rows[i].cells[4].innerHTML = num * unit;
			totalMoney = (num * unit) + totalMoney;
		}
		total.innerHTML = totalMoney;
	}
</script>
</head>
<body onload="countMoney()">
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li>客户管理</li>
    <li>客户信息管理</li>
    <li>客户信息</li>
    <li>历史订单</li>
    <li>订单明细</li>
    </ul>
    </div>
    <div class="formbody">
    
    	<div class="formtitle" ><span>基本信息</span></div>
    	<div class="clear"></div>
    	 <ul class="forminfo" style="margin-left: 10px;">
	     	 <li><input name="" type="button" class="btn" value="返回" onclick="history.back();"/></li>
	     </ul>
	    <div class="clear"></div>
        <table>
	    	<tr>
	    		<td class="dftr">订单编号：</td>
	    		<td class="dfinput">${orders.odrId }</td>
	    		<td class="dftr">日期：</td>
	    		<td class="dfinput">${orders.odrDate }</td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">送货地址：</td>
	    		<td class="dfinput">${orders.odrAddr }</td>
	    		<td class="dftr">总金额(元)：</td>
	    		<td class="dfinput" id="total" ></td>
	    	</tr>
	    	<tr>
	    		<td class="dftr">状态：</td>
	    		<td class="dfinput">${orders.odrStatus }</td>
	    		<td class="dftr"></td>
	    		<td class="dfinput"></td>
	    	</tr>
	    	<tr>
	    		<td>&nbsp;</td>
	    	</tr>
	    </table>
	 	<table class="tablelist" id="orderline" >
    	<thead>
    	<tr>
        <th>商品</th>
        <th>数量</th>
        <th>单位</th>
        <th>单价</th>
        <th>金额(元)</th>
        </tr>
        </thead>
        <tbody>
       	<s:if test="null == request.ordersLineList ||  ordersLineList.size<1">
	        <tr>
	        	<td colspan="5" align="center">无商品信息</td>
	        </tr> 
        </s:if>
        <s:else>
        	<s:iterator  value="ordersLineList" status="status">
       		<tr>
	        <td>${products.get(status.count-1).prodName }</td>
	        <td>${oddCount }</td>
	        <td>${products.get(status.count-1).prodUnit }</td>
	        <td>${products.get(status.count-1).prodPrice }</td>
	        <td></td>
	        </tr>
	        </s:iterator>
    	</s:else>
        </tbody>
    </table>
	    
    </div>
</body>
</html>