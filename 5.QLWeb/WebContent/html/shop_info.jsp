<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>DataMatrix分析平台</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">

	<link rel="stylesheet" href="../assets/css/amazeui.css" />
	<link rel="stylesheet" href="../assets/css/core.css" />
	<link rel="stylesheet" href="../assets/css/menu.css" />
	<link rel="stylesheet" href="../assets/css/index.css" />
	<link rel="stylesheet" href="../assets/css/admin.css" />
	<link rel="stylesheet" href="../assets/css/page/typography.css" />
	<link rel="stylesheet" href="../assets/css/page/form.css" />
	<link rel="stylesheet" href="../assets/css/component.css" />


	<link href="../css/styles.css" rel="stylesheet">

</head>

<body>
<!-- Begin page -->
	<header class="am-topbar am-topbar-fixed-top">
		<div class="am-topbar-left am-hide-sm-only">
			<a href="../index.jsp" class="logo"><span>DataMatrix分析平台</span><i class="zmdi zmdi-layers"></i></a>
		</div>


		<div class="contain">
			<ul class="am-nav am-navbar-nav am-navbar-left">

				<li>
					<h4 class="page-title">店铺信息</h4>
				</li>
			</ul>

			<ul class="am-nav am-navbar-nav am-navbar-right">
				<li class="hidden-xs am-hide-sm-only">
						<a href="../login.jsp"><button type="button" class="btn btn-default">退出登录</button></a>
				</li>
			</ul>
		</div>
	</header>
	<!-- end page -->


	<div class="admin">

		<!-- ========== Left Sidebar Start ========== -->

		<!-- sidebar start -->
		<div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar">
				<!-- User -->
				<div class="user-box am-hide-sm-only">

					<h5><a href="#">DataMatrix Group</a> </h5>

				</div>
				<!-- End User -->

				<ul class="am-list admin-sidebar-list">
					<li><a href="../index.jsp"><span class="am-icon-home"></span> 首页</a></li>

					<!-- 客流分析 start -->
					<li class="admin-parent">
						<a class="am-cf" data-am-collapse="{target: '#left-customerAna'}"><span class="am-icon-table"></span> 客流分析 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in" id="left-customerAna">
							<li><a href="flow_main.jsp" class="am-cf"> 整体概览</span></a></li>
							<li><a href="flow_real.jsp">实时客流</a></li>
							<li><a href="flow_person.jsp">顾客分析</a></li>
							<li><a href="flow_probe.jsp">探针流水</a></li>

						</ul>
					</li>
					<!-- 客流分析 end -->


					<!-- 设备管理 start -->

					<li><a href="dev_manage.jsp"><span class="am-icon-file"></span> 设备管理</a></li>
					<!-- 设备管理 end -->

					<!-- 商家设置 start -->
					<li class="admin-parent">
						<a class="am-cf" data-am-collapse="{target: '#left-shopInfo'}"><span class="am-icon-line-chart"></span> 商家设置 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in" id="left-shopInfo">
							<li><a href="shop_info.jsp" class="am-cf"> 商家信息</span></a></li>
							<li><a href="shop_manage.jsp">账号管理</a></li>
						</ul>
					</li>
					<!-- 商家设置 end -->

			</div>
		</div>
		<!-- sidebar end -->


		<!-- ========== Left Sidebar end ========== -->


		<!--	<div class="am-g">-->
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="am-g">
					<!-- Row start -->
					<div class="am-u-sm-12">
						<div class="card-box">
							<ul class="am-nav am-fr">
								<li class="am-dropdown" data-am-dropdown>
									<a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
								       <span class="am-icon-caret-down"></span>
								    </a>
									<ul class="am-dropdown-content">
										<li>1231234</li>
										<li>1231234</li>
										<li>1231234</li>
										<li>1231234</li>
									</ul>
								</li>
							</ul>

							<form action="" class="am-form" data-am-validator>
								<fieldset>
									<legend>商家信息</legend>
									<div class="am-form-group">
										<label for="doc-vld-name-2">商家名称：</label>
										<input type="text" id="doc-vld-name-2" minlength="3" value="DataMatrix Group" required/>
									</div>

									<div class="am-form-group">
										<label for="doc-vld-email-2">邮箱：</label>
										<input type="email" id="doc-vld-email-2" value="109385@qq.com" required/>
									</div>

									<div class="am-form-group">
										<label for="doc-vld-url-2">地址：</label>
										<input type="text" id="doc-vld-url-2" value="山东省青岛经济开发区" required/>
									</div>

									<div class="am-form-group">
										<label for="doc-vld-age-2">联系人：</label>
										<input type="text" class="" id="doc-vld-age-2" value="Kevin" min="18" max="120" required />
									</div>
									<div class="am-form-group">
										<label>性别： </label>
										<label class="am-radio-inline">
								        <input type="radio"  value="" checked name="docVlGender" required> 男
								      </label>
										<label class="am-radio-inline">
								        <input type="radio" name="docVlGender"> 女
								      </label>
									</div>
									<div class="am-form-group">
										<label for="doc-vld-age-2">联系电话：</label>
										<input type="number" class="" id="doc-vld-age-2" value="17854258888"  required />
									</div>
									<div class="am-form-group">
										<label for="doc-vld-age-2">所属行业：</label>
										<input class="" type="text" id="doc-vld-age-2" value="教育" min="18" max="120" required />
									</div>
									

									<div class="am-form-group">
										<label for="doc-vld-ta-2">备注：</label>
										<textarea id="doc-vld-ta-2" placeholder="无"  ></textarea>
									</div>

									<button class="am-btn am-btn-secondary" type="submit">提交</button>
								</fieldset>
							</form>


						</div>
					</div>
					<!-- Row end -->
				</div>




			</div>
		</div>
		<!-- end right Content here -->
		<!--</div>-->
	</div>
	</div>

	<!-- navbar -->
	<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

	<script type="text/javascript" src="../assets/js/jquery-2.1.0.js"></script>
	<script type="text/javascript" src="../assets/js/amazeui.min.js"></script>
	<script type="text/javascript" src="../assets/js/app.js"></script>
	<script type="text/javascript" src="../assets/js/blockUI.js"></script>
</body>

</html>