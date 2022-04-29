<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>欢迎使用网站后台管理系统</title>
<link rel="stylesheet" type="text/css" href="h-ui/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/css/style.css" />
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="h-ui/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="h-ui/h-ui.admin/js/H-ui.admin.js"></script>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>车辆管理 <span class="c-gray en">&gt;</span> 车辆查询 <a
			class="btn btn-success radius r" style="line-height: 1.6em; margin-top: 3px" href="javascript:location.replace(location.href);"
			title="刷新"> <i class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<table class="table table-border table-bordered table-bg">
			<thead>
				<tr>
					<th scope="col" colspan="17">车辆查询</th>
				</tr>
				<tr class="text-c">
					<th class="center">车牌号</th>
					<th class="center">出租价格</th>
					<th class="center">车辆类型</th>
					<th class="center">所在区域</th>
					<th class="center">所属网点</th>
					<th class="center">是否推荐</th>
					<th class="center">是否特价</th>
					<th class="center">车辆颜色</th>
					<th class="center">上牌日期</th>
					<th class="center">排量</th>
					<th class="center">油耗</th>
					<th class="center">上架日期</th>
					<th class="center">点击数</th>
					<th class="center">车辆状态</th>
				</tr>
			</thead>
			<c:forEach items="${carsList}" var="cars">
				<tr class="text-c">
					<td class="center">${cars.carsno}</td>
					<td class="center">${cars.price}</td>
					<td class="center">${cars.catename}</td>
					<td class="center">${cars.areaxname}</td>
					<td class="center">${cars.shopsname}</td>
					<td class="center">${cars.recommend}</td>
					<td class="center">${cars.special}</td>
					<td class="center">${cars.color}</td>
					<td class="center">${cars.workdate}</td>
					<td class="center">${cars.pailiang}</td>
					<td class="center">${cars.youhao}</td>
					<td class="center">${cars.addtime}</td>
					<td class="center">${cars.hits}</td>
					<td class="center">${cars.status}</td>
				</tr>
			</c:forEach>
		</table>
		<div class="cl pd-5 mt-20"></div>
		<div class="text-c">
			<form action="cars/queryCarsByCond.action" name="myform" method="post">
				查询条件： <span class="select-box" style="width: 200px;"><select name="cond" class="select">
						<option value="carsno">按车牌号查询</option>
						<option value="price">按出租价格查询</option>
						<option value="cateid">按车辆类型查询</option>
						<option value="areaxid">按所在区域查询</option>
						<option value="shopsid">按所属网点查询</option>
						<option value="recommend">按是否推荐查询</option>
						<option value="special">按是否特价查询</option>
						<option value="color">按车辆颜色查询</option>
						<option value="workdate">按上牌日期查询</option>
						<option value="pailiang">按排量查询</option>
						<option value="youhao">按油耗查询</option>
						<option value="addtime">按上架日期查询</option>
						<option value="hits">按点击数查询</option>
						<option value="status">按车辆状态查询</option>
				</select></span>&nbsp;&nbsp;关键字<input type="text" name="name" required style="width: 200px" class="input-text" />
				<button type="submit" class="btn btn-success radius">
					<i class="Hui-iconfont">&#xe665;</i> 查询
				</button>
			</form>
		</div>
	</div>
</body>
</html>

