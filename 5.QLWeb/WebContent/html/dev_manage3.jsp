<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
					<h4 class="page-title">探针管理</h4>
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
				<div class="card-box">
					<!-- Row start -->
					<div class="am-g">
						<div class="am-u-sm-12 am-u-md-6">
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<a href="dev_add.jsp"><button type="button" ><span class="am-icon-plus" ></span> 新增</button> </a>
										<a href="dev_manage2.jsp"><button type="button" ><span class="am-icon-trash-o" ></span> 删除</button> </a>
								</div>
							</div>
						</div>

						<div class="am-u-sm-12 am-u-md-3">
							<div class="am-input-group am-input-group-sm">
								<input type="text" class="am-form-field">
								<span class="am-input-group-btn">
				            <button class="am-btn am-btn-default" type="button">搜索</button>
				          </span>
							</div>
						</div>
					</div>
					<!-- Row end -->

					<!-- Row start -->
					<div class="am-g">
						<div class="am-u-sm-12">
							<form class="am-form">
								<table class="am-table am-table-striped am-table-hover table-main">
									<thead>
										<tr>
											<th class="table-check"><input type="checkbox" /></th>
											<th class="table-id">ID</th>
											<th class="table-title">mac</th>
											<th class="table-type">发送频率</th>
											<th>状态</th>
											<th class="table-date am-hide-sm-only">添加日期</th>
											<th class="table-set">操作</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input type="checkbox" /></td>
											<td>1</td>
											<td><a href="#">00:01:7a:aa:bb:cc</a></td>
											<td>3</td>
											<td><span class="label label-success">正常运行</span></td>
											<td class="am-hide-sm-only">2017年6月23日 17:28:47</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button type="button" class="btn btn-primary" id="myButton4" data-complete-text="Loading finished" onclick="javaScript:window.location.href='../index.jsp';">选择</button>
														</div>
												</div>
											</td>
										</tr>

										<tr>
											<td><input type="checkbox" /></td>
											<td>2</td>
											<td><a href="#">5e:cf:7f:10:f3:77</a></td>
											<td>3</td>
											<td><span class="label label-warning">关闭</span></td>
											<td class="am-hide-sm-only">2017年6月24日 12:14:52</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button type="button" class="btn btn-primary" id="myButton4" data-complete-text="Loading finished" onclick="javaScript:window.location.href='../index.jsp';">选择</button>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td><input type="checkbox" /></td>
											<td>3</td>
											<td><a href="#">00:3a:98:0c:66:40</a></td>
											<td>3</td>
											<td><span class="label label-warning">关闭</span></td>
											<td class="am-hide-sm-only">2017年6月24日 12:14:52</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														<button type="button" class="btn btn-primary" id="myButton5" data-complete-text="Loading finished" onclick="javaScript:window.location.href='../index.jsp';">选择</button>
													</div>
												</div>
											</td>
										</tr>

									</tbody>
								</table>

						</div>

						</form>
					</div>

				</div>
				<!-- Row end -->

			</div>




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

		<script src="../js/jquery-1.11.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(function () {
			$("#myButton1").click(function () {
				$(this).button('loading').delay(1000).queue(function () {
					$(this).button('complete');
				});
			});
		});

	</script>

</body>

</html>