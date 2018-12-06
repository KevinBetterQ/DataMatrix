<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>DataMatrix分析平台</title>

	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">

	<link rel="stylesheet" href="assets/css/amazeui.css" />
	<link rel="stylesheet" href="assets/css/core.css" />
	<link rel="stylesheet" href="assets/css/menu.css" />
	<link rel="stylesheet" href="assets/css/index.css" />
	<link rel="stylesheet" href="assets/css/admin.css" />
	<link rel="stylesheet" href="assets/css/page/typography.css" />
	<link rel="stylesheet" href="assets/css/page/form.css" />
	<link rel="stylesheet" href="assets/css/component.css" />

	<link href="assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />



	<link href="css/styles.css" rel="stylesheet">

</head>

<body>
	<!-- Begin page -->
	<header class="am-topbar am-topbar-fixed-top">
		<div class="am-topbar-left am-hide-sm-only">
			<a href="index.jsp" class="logo"><span>DataMatrix分析平台</span><i class="zmdi zmdi-layers"></i></a>
		</div>


		<div class="contain">
			<ul class="am-nav am-navbar-nav am-navbar-left">

				<li>
					<h4 class="page-title">探针状态</h4>
				</li>
				
			</ul>

			<ul class="am-nav am-navbar-nav am-navbar-right">
				
				<li class="hidden-xs am-hide-sm-only">
						<a href="login.jsp"><button type="button" class="btn btn-default">退出登录</button></a>
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

					<h5><a href="#">Admin</a> </h5>

				</div>
				<!-- End User -->

				<ul class="am-list admin-sidebar-list">
					<li><a href="admin.jsp"><span class="am-icon-home"></span> 探针状态</a></li>

					<!-- 设备管理 start -->

					<li><a href="html/flow_probe2.jsp"><span class="am-icon-file"></span> 探针流水</a></li>
					<!-- 设备管理 end -->

				</ul>
			</div>
		</div>
		<!-- sidebar end -->

		<!-- ========== Left Sidebar end ========== -->



			<!-- ============================================================== -->
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="card-box">
					

					<!-- Row start -->
					<div class="am-g">
						<div class="am-u-sm-12">
							<form class="am-form">
								<table class="am-table am-table-striped am-table-hover table-main">
									<thead>
										<tr>
											<th class="table-id">index</th>
											<th class="table-id">ID</th>
											<th class="table-title">mac</th>
											<th class="table-type">发送频率</th>
											<th>状态</th>
											<th class="table-date am-hide-sm-only">添加日期</th>
											
										</tr>
									</thead>
									<tbody>
										<tr>
											
											<td>1</td>
											<td>00aabbcc</td>
											<td><a href="#">00:01:7a:aa:bb:cc</a></td>
											<td>3</td>
											<td><span class="label label-success">正常运行</span></td>
											<td class="am-hide-sm-only">2017年6月23日 17:28:47</td>
											
										</tr>

										<tr>
											
											<td>2</td>
											<td>007db072</td>
											<td><a href="#">5e:cf:7f:10:f3:77</a></td>
											<td>3</td>
											<td><span class="label label-warning">关闭</span></td>
											<td class="am-hide-sm-only">2017年6月24日 12:06:23</td>
											
										</tr>

										<tr>
											
											<td>3</td>
											<td>007db072</td>
											
											<td><a href="#">00:3a:98:0c:66:40</a></td>
											<td>3</td>
											<td><span class="label label-warning">关闭</span></td>
											<td class="am-hide-sm-only">2017年6月24日 12:14:52</td>
											
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

	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery-2.1.0.js"></script>
	<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript" src="assets/js/blockUI.js"></script>
	<script type="text/javascript" src="assets/js/charts/echarts.min.js"></script>
	<script type="text/javascript" src="assets/js/charts/indexChart.js"></script>

	<script type="text/javascript" src="assets/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-datetimepicker.fr.js"></script>

	<script type="text/javascript">
		$('.form_date').datetimepicker({
			format: 'yyyy-mm-dd',
			minView: "month",
			language: 'zh-CN', //汉化 
			autoclose: true //选择日期后自动关闭
		});
	</script>

</body>

</html>