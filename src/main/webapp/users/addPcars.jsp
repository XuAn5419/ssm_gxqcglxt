<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="index/index.action">首页</a>
			<code> &gt; </code>
			注册车辆
		</div>
	</div>
	<div class="blank"></div>

	<div class="blank"></div>
	<div class="block clearfix">

		<div class="AreaL">
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox">
						<jsp:include page="usermenu.jsp"></jsp:include>
					</div>
				</div>
			</div>
		</div>


		<div class="AreaR">
			<div class="box">
				<div class="box_1">
					<div class="userCenterBox boxCenterList clearfix" style="_height: 1%;">

						<h5>
							<span>注册车辆</span>
						</h5>
						<div class="blank"></div>
						<form action="index/addPcars.action" name="myform" method="post">
							<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
								<tr>
									<td width="20%" align="right" bgcolor="#FFFFFF">车牌号：</td>
									<td width="80%" align="left" bgcolor="#FFFFFF"><input name="carsno" type="text" size="25" class="inputBg" id="carsno"
										placeholder="请输入标题" /></td>
								</tr>
								<tr>
									<td width="20%" align="right" bgcolor="#FFFFFF">图片：</td>
									<td width="80%" align="left" bgcolor="#FFFFFF"><input class="inputBg" type="text" name="image" id="image" size="25"
										onclick="selimage();" placeholder="请选择图片" readonly="readonly" /></td>
								</tr>
								<tr>
									<td width="20%" align="right" bgcolor="#FFFFFF">车辆类型：</td>
									<td width="80%" align="left" bgcolor="#FFFFFF"><select name="cateid" class="inputBg" id="cateid">
											<option value="">---请选择车辆类型--</option>
											<c:forEach items="${cateList}" var="cate">
												<option value="${cate.cateid}">${cate.catename }</option>
											</c:forEach>
									</select></td>
								</tr>
								<tr>
									<td width="20%" align="right" bgcolor="#FFFFFF">油耗：</td>
									<td width="80%" align="left" bgcolor="#FFFFFF"><input name="youhao" type="text" size="25" class="inputBg" id="youhao"
										placeholder="请输入油耗" /></td>
								</tr>
								<tr>
									<td width="20%" align="right" bgcolor="#FFFFFF">排量：</td>
									<td width="80%" align="left" bgcolor="#FFFFFF"><input name="pailiang" type="text" size="25" class="inputBg" id="pailiang"
										placeholder="请输入排量" /></td>
								</tr>
								<tr>
									<td width="20%" align="right" bgcolor="#FFFFFF">车身颜色：</td>
									<td width="80%" align="left" bgcolor="#FFFFFF"><input name="color" type="text" size="25" class="inputBg" id="color"
										placeholder="请输入车身颜色" /></td>
								</tr>
								<tr>
									<td width="28%" align="right" bgcolor="#FFFFFF">上牌日期：</td>
									<td width="76%" align="left" bgcolor="#FFFFFF"><input name="workdate" type="text" size="25" class="inputBg" id="workdate"
										onclick="WdatePicker()" readonly="readonly" placeholder="请输入上牌日期" /></td>
								</tr>
								<tr>
									<td align="right" bgcolor="#FFFFFF">车辆介绍：</td>
									<td align="left" bgcolor="#FFFFFF"><textarea name="contents" class="inputBg" id="contents" placeholder="请输入车辆介绍"
											style="width: 99%; height: 140px"></textarea></td>
								</tr>
								<tr>
									<td colspan="2" align="center" bgcolor="#FFFFFF"><input type="submit" class="bnt_blue_1" style="border: none;" value="确认提交" /></td>
								</tr>
							</table>
						</form>

					</div>
				</div>
			</div>
		</div>

	</div>
	<div class="blank"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
