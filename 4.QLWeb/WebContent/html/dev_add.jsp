﻿<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>DataMatrix分析平台</title>
	<link rel="stylesheet" href="../assets/css/amazeui.css" />
	<link rel="stylesheet" href="../assets/css/core.css" />
	<link rel="stylesheet" href="../assets/css/menu.css" />
	<link rel="stylesheet" href="../assets/css/index.css" />
	<link rel="stylesheet" href="../assets/css/admin.css" />
	<link rel="stylesheet" href="../assets/css/page/typography.css" />
	<link rel="stylesheet" href="../assets/css/page/form.css" />
	<link rel="stylesheet" href="../assets/css/component.css" />

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
					<h4 class="page-title">设备添加</h4>
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


							<h4 class="header-title m-t-0 m-b-30">探针添加</h4>

							<div class="am-g">
								<div class="am-u-md-6">
									<form class="am-form am-text-sm">
										<div class="am-form-group">
											<div class="am-g">
												<label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-text-1">ID</label>
												<input class="am-u-md-10 form-control" id="doc-ipt-text-1" placeholder="">
											</div>
										</div>

										<div class="am-form-group">
											<div class="am-g">
												<label class="am-u-md-2 am-md-text-right am-padding-left-0" for="doc-ipt-email-1">Mac</label>
												<input class="am-u-md-10 form-control" id="doc-ipt-email-1" placeholder="">
											</div>
										</div>
										
										<a href="dev_manage2.jsp"><button type="button" class="am-btn am-btn-primary">确定</button></a>

									</form>
								</div>



							</div>
						</div>
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