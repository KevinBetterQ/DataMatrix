﻿<!DOCTYPE html>
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
	<link href="../assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />

</head>

<body>
	<!-- Begin page -->
	<header class="am-topbar am-topbar-fixed-top">
		<div class="am-topbar-left am-hide-sm-only">
			<a href="../index.html" class="logo"><span>DataMatrix分析平台</span><i class="zmdi zmdi-layers"></i></a>
		</div>


		<div class="contain">
			<ul class="am-nav am-navbar-nav am-navbar-left">

				<li>
					<h4 class="page-title">顾客分析</h4>
				</li>
			</ul>

			<ul class="am-nav am-navbar-nav am-navbar-right">
				<li class="hidden-xs am-hide-sm-only">
						<a href="../login.html"><button type="button" class="btn btn-default">退出登录</button></a>
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
					<li><a href="../index.html"><span class="am-icon-home"></span> 首页</a></li>

					<!-- 客流分析 start -->
					<li class="admin-parent">
						<a class="am-cf" data-am-collapse="{target: '#left-customerAna'}"><span class="am-icon-table"></span> 客流分析 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in" id="left-customerAna">
							<li><a href="flow_main.html" class="am-cf"> 整体概览</span></a></li>
							<li><a href="flow_real.html">实时客流</a></li>
							<li><a href="flow_person.html">顾客分析</a></li>
							<li><a href="flow_probe.html">探针流水</a></li>

						</ul>
					</li>
					<!-- 客流分析 end -->


					<!-- 设备管理 start -->

					<li><a href="dev_manage.html"><span class="am-icon-file"></span> 设备管理</a></li>
					<!-- 设备管理 end -->

					<!-- 商家设置 start -->
					<li class="admin-parent">
						<a class="am-cf" data-am-collapse="{target: '#left-shopInfo'}"><span class="am-icon-line-chart"></span> 商家设置 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in" id="left-shopInfo">
							<li><a href="shop_info.html" class="am-cf"> 商家信息</span></a></li>
							<li><a href="shop_manage.html">账号管理</a></li>
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
					<ul class="nav nav-tabs">

						<ul class="nav nav-pills">
							<li class="active"><a href="#pilltab1" data-toggle="tab">昨天</a></li>
							<li><a href="#week" data-toggle="tab">一周</a></li>
							<li><a href="#month" data-toggle="tab">一月</a></li>
							<li><a href="#undefine" data-toggle="tab">自定义</a></li>
						</ul>


						<div class="tab-content">
							<!-- 昨天 -->
							<div class="tab-pane fade in active" id="pilltab1">
								<div class="am-g">
									<div class="am-u-md-6">
										<!-- 驻店时长分布 -->
										<div class="card-box">
											<div id="zdpie" style="width: 100%;height: 400px;"></div>
										</div>
									</div>

									<div class="am-u-md-6">
										<!-- 用户活跃度  -->
										<div class="card-box">
											<div id="hypie" style="width: 100%;height: 400px;"></div>
										</div>
									</div>
								</div>

								<div class="am-g">
									<div class="am-u-md-6">
										<!-- 新老顾客 -->
										<div class="card-box">
											<div id="xlpie" style="width: 100%;height: 400px;"></div>
										</div>
									</div>
								</div>

							</div>
							<!-- 一周 -->
							<div class="tab-pane fade" id="week">
								<div class="am-g">
									<div class="am-u-md-6">
										<!-- 驻店时长分布 -->
										<div class="card-box">
											<div id="zdpiez" style="width: 400%;height: 400px;"></div>
										</div>
									</div>

									<div class="am-u-md-6">
										<!-- 用户活跃度  -->
										<div class="card-box">
											<div id="hypiez" style="width: 600%;height: 400px;"></div>
										</div>
									</div>
								</div>
								<div class="am-g">
									<div class="am-u-md-6">
										<!-- 新老顾客 -->
										<div class="card-box">
											<div id="xlpiez" style="width: 400%;height: 400px;"></div>
										</div>
									</div>
								</div>


							</div>
							<!-- 一月 -->
							<div class="tab-pane fade" id="month">


								<div class="am-g">
									<div class="am-u-md-6">
										<!-- 驻店时长分布 -->
										<div class="card-box">
											<div id="zdpiey" style="width: 400%;height: 400px;"></div>
										</div>
									</div>

									<div class="am-u-md-6">
										<!-- 用户活跃度  -->
										<div class="card-box">
											<div id="hypiey" style="width: 700%;height: 400px;"></div>
										</div>
									</div>
								</div>
								<div class="am-g">
									<div class="am-u-md-6">
										<!-- 新老顾客 -->
										<div class="card-box">
											<div id="xlpiey" style="width: 400%;height: 400px;"></div>
										</div>
									</div>
								</div>
							</div>

							<!-- 自定义 -->
							<div class="tab-pane fade" id="undefine">
								<div class="am-g">
									<div class="am-u-md-12 ">
										<div class="card-box">
											<div class="form-group">
												<label for="dtp_input1" class="col-md-2 control-label">开始时间：</label>
												<div class="input-group date form_date col-md-3 " data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2"
												 data-link-format="yyyy-mm-dd">

													<input class="form-control" size="16" type="text" value="" readonly>
													<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
													<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>

												</div>
											</div>
											<div class="form-group">
												<label for="dtp_input1" class="col-md-2 control-label">结束时间：</label>
												<div class="input-group date form_date col-md-4 " data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2"
												 data-link-format="yyyy-mm-dd">

													<input class="form-control" size="16" type="text" value="" readonly>
													<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
													<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
													<div class="col-lg-2">
														<button class="am-btn am-btn-secondary" type="submit"><a href="#choice" data-toggle="tab">确定</button>
													</div>
												</div>
											</div>
										</div>
										
									</div>
								</div>
								

							</div>

							<!-- 自定义选择之后 -->
							<div class="tab-pane fade" id="choice">
								<div class="am-g">
									<div class="am-u-md-6">
										<!-- 驻店时长分布 -->
										<div class="card-box">
											<div id="zdpieu" style="width: 100%;height: 400px;"></div>
										</div>
									</div>

									<div class="am-u-md-6">
										<!-- 用户活跃度  -->
										<div class="card-box">
											<div id="hypieu" style="width: 100%;height: 400px;"></div>
										</div>
									</div>
								</div>

								<div class="am-g">
									<div class="am-u-md-6">
										<!-- 新老顾客 -->
										<div class="card-box">
											<div id="xlpieu" style="width: 100%;height: 400px;"></div>
										</div>
									</div>
								</div>
							</div>

						</div>

					</ul>
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
	<script type="text/javascript" src="../assets/js/charts/echarts.min.js"></script>
	<script type="text/javascript" src="../assets/js/charts/flow_person.js"></script>

	<script src="../js/jquery-1.11.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>

	<script type="text/javascript" src="../assets/js/bootstrap-datetimepicker.js"></script>
	<script type="text/javascript" src="../assets/js/bootstrap-datetimepicker.fr.js"></script>

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