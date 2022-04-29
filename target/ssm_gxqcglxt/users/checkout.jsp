<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="<%=basePath%>">首页</a>
			<code> &gt; </code>
			确认订单
		</div>
	</div>
	<div class="blank"></div>
	<div class="block table">
		<form action="index/checkout.action" method="post" name="theForm" id="theForm">
			<div class="flowBox">
				<h6>
					<span>确认订单</span>
				</h6>
				<table width="60%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
					<tr>
						<td style="width: 25%" align="right" bgcolor="#ffffff">预约单号:</td>
						<td bgcolor="#ffffff" colspan="2">${ordercode }<input name="ordercode" type="hidden" id="ordercode" value="${ordercode }" /><input
							name="id" type="hidden" id="id" value="${cars.carsid }" /></td>
					</tr>
					<tr>
						<td align="right" bgcolor="#ffffff">预约车辆:</td>
						<td bgcolor="#ffffff" colspan="2">${cars.carsno }<input name="carsid" type="hidden" id="carsid" value="${cars.carsid }" /></td>
					</tr>
					<tr>
						<td width="18%" align="right" bgcolor="#ffffff">开始日期:</td>
						<td bgcolor="#ffffff" colspan="2"><input name="thestart" type="text" id="thestart" onclick="WdatePicker()" readonly="readonly"
							placeholder="请输入开始日期" /></td>
					</tr>
					<tr>
						<td align="right" bgcolor="#ffffff">结束日期:</td>
						<td bgcolor="#ffffff" colspan="2"><input name="theend" type="text" id="theend" onclick="WdatePicker()" readonly="readonly"
							placeholder="请输入结束日期" /></td>
					</tr>
					<tr>
						<td align="right" bgcolor="#ffffff">备注:</td>
						<td bgcolor="#ffffff" colspan="2"><input name="memo" type="text" id="memo" /></td>
					</tr>
					<tr>
						<td colspan="4" align="center" bgcolor="#ffffff"><input type="submit" class="bnt_blue_2" value="确定" /></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
