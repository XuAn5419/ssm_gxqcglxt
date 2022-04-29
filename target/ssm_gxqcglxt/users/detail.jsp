<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="index/index.action">首页</a>
			<code> &gt; </code>
			<a href="index/cate.action?id=${cars.cateid }">${cars.catename }</a>
			<code> &gt; </code>
			${cars.carsno }
		</div>
	</div>
	<div class="blank"></div>
	<div class="block clearfix">
		<div class="AreaL">
			<div id="category_tree" class="category_tree">
				<div class="title">所有车辆分类</div>
				<dl class="clearfix" style="background: #fafafa; width: 216px; padding: 0;">
					<div class="box1 cate" id="cate">
						<c:forEach items="${cateList}" var="cate">
							<h1>
								<a href="index/cate.action?id=${cate.cateid }" class="  f_l">${cate.catename }</a>
							</h1>
							<div style="clear: both"></div>
						</c:forEach>
					</div>
					<div style="clear: both"></div>
				</dl>
			</div>
			<div class="blank"></div>
			<div class="box" id='history_div'>
				<div class="box_1">
					<h3>
						<span>热门车辆</span>
					</h3>
					<div class="boxCenterList clearfix" id='history_list'>
						<c:forEach items="${hotList}" var="cars">
							<ul class="clearfix">
								<li class="goodsimg"><a href="index/detail.action?id=${cars.carsid }" target="_blank"><img src="${cars.image }"
										alt="${cars.carsno }" class="B_blue" /> </a></li>
								<li><a href="index/detail.action?id=${cars.carsid }" target="_blank" title="${cars.carsno }">${cars.carsno }</a> <br /> 租金： <font
									class="f1">￥${cars.price}元/天</font> <br /></li>
							</ul>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="blank5"></div>
		</div>
		<div class="AreaR">
			<div id="goodsInfo" class="clearfix">
				<div class="imgInfo">
					<img src="${cars.image }" alt="${cars.carsno }" width="360px;" height="360px" />
					<div class="blank5"></div>
					<div class="blank"></div>
				</div>
				<div class="textInfo">
					<h1 class="clearfix">${cars.carsno }</h1>
					<ul class="ul2 clearfix">
						<li class="clearfix" style="width: 100%">
							<dd>
								<strong>车辆租金：</strong><font class="shop" id="ECS_SHOPPRICE">￥ ${price } 元/天</font>
							</dd>
						</li>
						<li class="clearfix">
							<dd>
								<strong>车辆类型：</strong><a href="index/cate.action?id=${cars.cateid }">${cars.catename }</a>
							</dd>
						</li>
						<li class="clearfix">
							<dd>
								<strong>所在区域：</strong><a href="index/areax.action?id=${cars.areaxid }">${cars.areaxname }</a>
							</dd>
						</li>
						<li class="clearfix">
							<dd>
								<strong>所属网点：</strong><a href="index/shops.action?id=${cars.shopsid }">${cars.shopsname }</a>
							</dd>
						</li>
						<li class="clearfix" style="width: 100%">
							<dd>
								<strong>上牌日期：</strong>${cars.workdate}
							</dd>
						</li>
						<li class="clearfix" style="width: 100%">
							<dd>
								<strong>车身颜色：</strong>${cars.color}
							</dd>
						</li>
						<li class="clearfix" style="width: 100%">
							<dd>
								<strong>发动机排量：</strong>${cars.pailiang}
							</dd>
						</li>
						<li class="clearfix" style="width: 100%">
							<dd>
								<strong>综合油耗：</strong>${cars.youhao}
							</dd>
						</li>
						<li class="clearfix" style="width: 100%">
							<dd>
								<strong>上架日期：</strong>${cars.addtime}
							</dd>
						</li>
						<li class="clearfix" style="width: 100%">
							<dd>
								<strong>点击数：</strong>${cars.hits}
							</dd>
						</li>
					</ul>
					<c:if test="${cars.status eq '待租' }">
						<form action="index/preCheckout.action" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY">
							<ul class="bnt_ul">
								<li class="padd"><input type="hidden" name="id" value="${cars.carsid }"> <input type="image"
									src="themes/ecmoban_dangdang/images/bug.png" /></li>
							</ul>
						</form>
					</c:if>
				</div>
			</div>
			<div class="blank"></div>


			<div class="box">

				<div style="padding: 0 0px;">
					<div id="com_b" class="history clearfix">
						<h2>车辆描述</h2>
					</div>
				</div>
				<div class="box_1">
					<div id="com_v" class="  " style="padding: 6px;"></div>
					<div id="com_h">
						<blockquote>${cars.contents }</blockquote>
					</div>
				</div>
			</div>
			<div class="blank"></div>
			<div id="ECS_COMMENT">
				<div class="box">
					<div class="box_1">
						<h3>
							<span class="text">用户评论</span>(共<font class="f1">${tnum }</font>条评论)
						</h3>
						<div class="boxCenterList clearfix" style="height: 1%;">
							<ul class="comments">
								<c:forEach items="${topicList}" var="topic">
									<li class="word"><font class="f2">${topic.username } </font> <font class="f3">(${topic.addtime }) </font> <br /> <img
										src="themes/ecmoban_dangdang/images/stars${topic.num }.gif" />
										<p>${topic.contents }</p></li>
								</c:forEach>
							</ul>
							<div class="blank5"></div>
						</div>
					</div>
				</div>
				<div class="blank5"></div>

			</div>

		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
