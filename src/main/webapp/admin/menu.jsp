<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String role = (String) session.getAttribute("role");
	if ("系统管理员".equals(role)) {
%>
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">

		<dl id="menu-admin">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>管理员信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="admin/createAdmin.action" data-title="新增管理员" href="javascript:void(0)">新增管理员信息</a></li>
					<li><a data-href="admin/getAllAdmin.action" data-title="管理员列表" href="javascript:void(0)">管理员信息列表</a></li>
					<li><a data-href="admin/queryAdminByCond.action" data-title="管理员查询" href="javascript:void(0)">管理员信息查询</a></li>
					<li><a data-href="admin/prePwd.action" data-title="修改密码" href="javascript:void(0)">修改密码</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu-member">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>网站用户信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="users/getAllUsers.action" data-title="网站用户列表" href="javascript:void(0)">网站用户信息列表</a></li>
					<li><a data-href="users/queryUsersByCond.action" data-title="网站用户查询" href="javascript:void(0)">网站用户信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>新闻公告信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="article/createArticle.action" data-title="新增新闻公告" href="javascript:void(0)">新增新闻公告信息</a></li>
					<li><a data-href="article/getAllArticle.action" data-title="新闻公告列表" href="javascript:void(0)">新闻公告信息列表</a></li>
					<li><a data-href="article/queryArticleByCond.action" data-title="新闻公告查询" href="javascript:void(0)">新闻公告信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>车辆类型信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="cate/createCate.action" data-title="新增车辆类型" href="javascript:void(0)">新增车辆类型信息</a></li>
					<li><a data-href="cate/getAllCate.action" data-title="车辆类型列表" href="javascript:void(0)">车辆类型信息列表</a></li>
					<li><a data-href="cate/queryCateByCond.action" data-title="车辆类型查询" href="javascript:void(0)">车辆类型信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>区域信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="areax/createAreax.action" data-title="新增区域" href="javascript:void(0)">新增区域信息</a></li>
					<li><a data-href="areax/getAllAreax.action" data-title="区域列表" href="javascript:void(0)">区域信息列表</a></li>
					<li><a data-href="areax/queryAreaxByCond.action" data-title="区域查询" href="javascript:void(0)">区域信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>网点信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="shops/createShops.action" data-title="新增网点" href="javascript:void(0)">新增网点信息</a></li>
					<li><a data-href="shops/getAllShops.action" data-title="网点列表" href="javascript:void(0)">网点信息列表</a></li>
					<li><a data-href="shops/queryShopsByCond.action" data-title="网点查询" href="javascript:void(0)">网点信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>车辆信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="cars/createCars.action" data-title="新增车辆" href="javascript:void(0)">新增车辆信息</a></li>
					<li><a data-href="cars/getAllCars.action" data-title="车辆列表" href="javascript:void(0)">车辆信息列表</a></li>
					<li><a data-href="cars/queryCarsByCond.action" data-title="车辆查询" href="javascript:void(0)">车辆信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>预约出租信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="orders/getAllOrders.action" data-title="预约出租列表" href="javascript:void(0)">预约出租信息列表</a></li>
					<li><a data-href="orders/queryOrdersByCond.action" data-title="预约出租查询" href="javascript:void(0)">预约出租信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>车辆评价信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="topic/getAllTopic.action" data-title="车辆评价列表" href="javascript:void(0)">车辆评价信息列表</a></li>
					<li><a data-href="topic/queryTopicByCond.action" data-title="车辆评价查询" href="javascript:void(0)">车辆评价信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>用户车辆信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="pcars/getAllPcars.action" data-title="用户车辆列表" href="javascript:void(0)">用户车辆信息列表</a></li>
					<li><a data-href="pcars/queryPcarsByCond.action" data-title="用户车辆查询" href="javascript:void(0)">用户车辆信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>意见反馈信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="complains/getAllComplains.action" data-title="意见反馈列表" href="javascript:void(0)">意见反馈信息列表</a></li>
					<li><a data-href="complains/queryComplainsByCond.action" data-title="意见反馈查询" href="javascript:void(0)">意见反馈信息查询</a></li>
				</ul>
			</dd>
		</dl>

	</div>
</aside>
<%
	} else {
%>
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">

		<dl id="menu-admin">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>个人信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="admin/prePwd.action" data-title="修改密码" href="javascript:void(0)">修改密码</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu-member">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>网站用户信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="users/queryUsersByCond.action" data-title="网站用户查询" href="javascript:void(0)">网站用户信息查询</a></li>
				</ul>
			</dd>
		</dl>


		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>车辆类型信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="cate/createCate.action" data-title="新增车辆类型" href="javascript:void(0)">新增车辆类型信息</a></li>
					<li><a data-href="cate/getAllCate.action" data-title="车辆类型列表" href="javascript:void(0)">车辆类型信息列表</a></li>
					<li><a data-href="cate/queryCateByCond.action" data-title="车辆类型查询" href="javascript:void(0)">车辆类型信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>区域信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="areax/createAreax.action" data-title="新增区域" href="javascript:void(0)">新增区域信息</a></li>
					<li><a data-href="areax/getAllAreax.action" data-title="区域列表" href="javascript:void(0)">区域信息列表</a></li>
					<li><a data-href="areax/queryAreaxByCond.action" data-title="区域查询" href="javascript:void(0)">区域信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>网点信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="shops/createShops.action" data-title="新增网点" href="javascript:void(0)">新增网点信息</a></li>
					<li><a data-href="shops/getAllShops.action" data-title="网点列表" href="javascript:void(0)">网点信息列表</a></li>
					<li><a data-href="shops/queryShopsByCond.action" data-title="网点查询" href="javascript:void(0)">网点信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>车辆信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="cars/createCars.action" data-title="新增车辆" href="javascript:void(0)">新增车辆信息</a></li>
					<li><a data-href="cars/getAllCars.action" data-title="车辆列表" href="javascript:void(0)">车辆信息列表</a></li>
					<li><a data-href="cars/queryCarsByCond.action" data-title="车辆查询" href="javascript:void(0)">车辆信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>预约出租信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="orders/getAllOrders.action" data-title="预约出租列表" href="javascript:void(0)">预约出租信息列表</a></li>
					<li><a data-href="orders/queryOrdersByCond.action" data-title="预约出租查询" href="javascript:void(0)">预约出租信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>车辆评价信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="topic/getAllTopic.action" data-title="车辆评价列表" href="javascript:void(0)">车辆评价信息列表</a></li>
					<li><a data-href="topic/queryTopicByCond.action" data-title="车辆评价查询" href="javascript:void(0)">车辆评价信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>用户车辆信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="pcars/getAllPcars.action" data-title="用户车辆列表" href="javascript:void(0)">用户车辆信息列表</a></li>
					<li><a data-href="pcars/queryPcarsByCond.action" data-title="用户车辆查询" href="javascript:void(0)">用户车辆信息查询</a></li>
				</ul>
			</dd>
		</dl>


	</div>
</aside>
<%
	}
%>