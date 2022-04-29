<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" type="text/css" href="h-ui/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/css/style.css" />
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="h-ui/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="h-ui/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript" src="js/pcars.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>用户车辆管理 <span class="c-gray en">&gt;</span> 编辑用户车辆<a
			class="btn btn-success radius r" style="line-height: 1.6em; margin-top: 3px" href="pcars/getPcarsById.action?id=${pcars.pcarsid }"
			title="刷新"> <i class="Hui-iconfont">&#xe68f;</i></a> &nbsp;&nbsp; &nbsp;<a class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px" href="pcars/getAllPcars.action" title="返回"> <i class="Hui-iconfont">&#xe66b;</i></a>
	</nav>
	<article class="page-container">
		<form class="form form-horizontal" id="form-article-add" action="pcars/updatePcars.action" name="myform" method="post">
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">车牌号</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="carsno" class="input-text" id="carsno" value="${pcars.carsno}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">车辆类型</label>
				<div class="formControls col-xs-8 col-sm-9">
					<span class="select-box"><select name="cateid" class="select" id="cateid"><c:forEach items="${cateList}" var="cate">
								<option value="${cate.cateid}" ${cate.cateid == pcars.cateid?"selected":"" }>${cate.catename }</option>
							</c:forEach></select></span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">上牌日期</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="workdate" class="input-text" id="workdate" value="${pcars.workdate}" onclick="WdatePicker()"
						readonly="readonly" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">油耗</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="youhao" class="input-text" id="youhao" value="${pcars.youhao}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">排量</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="pailiang" class="input-text" id="pailiang" value="${pcars.pailiang}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">车身颜色</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="color" class="input-text" id="color" value="${pcars.color}" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">照片</label>
				<div class="formControls col-xs-8 col-sm-9">
					<script type="text/javascript" src="js/selimage.js"></script>
					<input class="input-text" type="text" name="image" value="${pcars.image}" id="image" onclick="selimage();" readonly="readonly" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">车辆详情</label>
				<div class="formControls col-xs-8 col-sm-9">
					<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
					<textarea class="textarea" name="contents" id="contents">${pcars.contents} </textarea>
					<script type="text/javascript">
						CKEDITOR.replace('contents', {
							language : 'zh-cn'
						});
					</script>
				</div>
			</div>
			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
					<input type="hidden" name="pcarsid" id="pcarsid" value="${pcars.pcarsid}" /><input type="hidden" name="usersid" id="usersid"
						value="${pcars.usersid}" /> <input type="hidden" id="basepath" value="<%=basePath%>" />
					<button id="sub" class="btn btn-secondary radius" type="submit">
						<i class="Hui-iconfont">&#xe632;</i>提交保存
					</button>
					<button id="res" class="btn btn-default radius" type="reset">
						<i class="Hui-iconfont">&#xe68f;</i>取消重置
					</button>
				</div>
			</div>
		</form>
	</article>
</body>
</html>


