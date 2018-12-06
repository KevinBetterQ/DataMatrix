<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
					<h4 class="page-title">设备列表</h4>
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
		
		
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				
		
			
			
				
					
				<div class="am-g">
						<!-- col start -->
						<div class="am-u-md-4">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">探针列表</h4>
								<div class="inbox-widget nicescroll" style="height: 315px; overflow: hidden; outline: none;" tabindex="5000">
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="../assets/img/wifi.png" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">Chadengle</p>
                                            <p class="inbox-item-text">Hey! there I'm available...</p>
                                            <p class="inbox-item-date">13:40 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="../assets/img/wifi.png" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">Shahedk</p>
                                            <p class="inbox-item-text">Hey! there I'm available...</p>
                                            <p class="inbox-item-date">10:15 AM</p>
                                        </div>
                                    </a>
                                    
                                </div>
							</div>
						</div>
						<!-- col end -->
						
						<!-- col start -->
						<div class="am-u-md-8">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">探针信息</h4>
								<div class="am-scrollable-horizontal am-text-ms" style="font-family: '微软雅黑';">
                                        <table class="am-table   am-text-nowrap">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>探针id</th>
                                                <th>探针mac</th>
                                                <th>发送频率</th>
                                                <th>地址信息</th>
                                                <th>状态</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
													<td>0010f377</td>
                                                    <td>5e:cf:7f:10:f3:77</td>
                                                    <td>3</td>
                                                    <td>山东科技大学</td>
													<td><span class="label label-success">正常运行</span></td>
                                                </tr>
												
												<tr>
                                                    <td>2</td>
													<td>0010f377</td>
                                                    <td>5e:cf:7f:10:f3:77</td>
                                                    <td>3</td>
                                                    <td>山东科技大学</td>
													<td><span class="label label-danger">已发布</span></td>
                                                </tr>
												
												<tr>
                                                    <td>3</td>
													<td>0010f377</td>
                                                    <td>5e:cf:7f:10:f3:77</td>
                                                    <td>3</td>
                                                    <td>山东科技大学</td>
													<td><span class="label label-pink">未开展</span></td>
                                                </tr>
												
												<tr>
                                                    <td>4</td>
													<td>0010f377</td>
                                                    <td>5e:cf:7f:10:f3:77</td>
                                                    <td>3</td>
                                                    <td>山东科技大学</td>
													<td><span class="label label-purple">进行中</span>
                                                </tr>
                                               
											   <tr>
                                                    <td>5</td>
													<td>0010f377</td>
                                                    <td>5e:cf:7f:10:f3:77</td>
                                                    <td>3</td>
                                                    <td>山东科技大学</td>
													<td><span class="label label-warning">即将开始</span></td>
                                                </tr>
                                                
												<tr>
                                                    <td>6</td>
													<td>0010f377</td>
                                                    <td>5e:cf:7f:10:f3:77</td>
                                                    <td>3</td>
                                                    <td>山东科技大学</td>
													<td><span class="label label-primary">即将开始</span></td>
                                                </tr>
                                               
                                            </tbody>
                                        </table>
                                    </div>
							</div>
						</div>
						<!-- col end -->
					</div>
					
			</div>
		</div>
		<!-- end right Content here -->

		</div>

		
		<!-- navbar -->
	<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

	<script type="text/javascript" src="../assets/js/jquery-2.1.0.js"></script>
	<script type="text/javascript" src="../assets/js/amazeui.min.js"></script>
	<script type="text/javascript" src="../assets/js/app.js"></script>
	<script type="text/javascript" src="../assets/js/blockUI.js"></script>
	<script type="text/javascript" src="../assets/js/charts/echarts.min.js"></script>
	<script type="text/javascript" src="../assets/js/charts/flow_person.js"></script>

	</body>
	
</html>
