<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="com.park.dao.domain.Parks"%>
     <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<%Parks park=(Parks)request.getAttribute("info");
		%>
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
			<a href="" class="logo"><span>DataMatrix分析平台</span><i class="zmdi zmdi-layers"></i></a>
		</div>


		<div class="contain">
			<ul class="am-nav am-navbar-nav am-navbar-left">

				<li>
					<h4 class="page-title">平台概览</h4>
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

					<h5><a href="#">DataMatrix Group</a> </h5>

				</div>
				<!-- End User -->

				<ul class="am-list admin-sidebar-list">
					<li><a href="index.jsp"><span class="am-icon-home"></span> 首页</a></li>

					<!-- 客流分析 start -->
					<li class="admin-parent">
						<a class="am-cf" data-am-collapse="{target: '#left-customerAna'}"><span class="am-icon-table"></span> 客流分析 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in" id="left-customerAna">
							<li><a href="html/flow_main.jsp" class="am-cf"> 整体概览</span></a></li>
							<li><a href="html/flow_real.jsp">实时客流</a></li>
							<li><a href="html/flow_person.jsp">顾客分析</a></li>
							<li><a href="html/flow_probe.jsp">探针流水</a></li>

						</ul>
					</li>
					<!-- 客流分析 end -->

					<!-- 设备管理 start -->

					<li><a href="html/dev_manage.jsp"><span class="am-icon-file"></span> 设备管理</a></li>
					<!-- 设备管理 end -->

					<!-- 商家设置 start -->
					<li class="admin-parent">
						<a class="am-cf" data-am-collapse="{target: '#left-shopInfo'}"><span class="am-icon-line-chart"></span> 商家设置 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in" id="left-shopInfo">
							<li><a href="html/shop_info.jsp" class="am-cf"> 商家信息</span></a></li>
							<li><a href="html/shop_manage.jsp">账号管理</a></li>
						</ul>
					</li>
					<!-- 商家设置 end -->


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

				<div class="am-g">
					<div class="am-u-md-12 ">
						<div class="card-box">
							<div class="form-group">
							
							<form id="form1" name="form1" method="post"  action="<%=basePath %>datashow">
    <div class="MainDiv">
      <table width="97%" border="0" cellpadding="0" cellspacing="0" class="CContent">
        <tr>
          <th class="tablestyle_title" ><div align="left">按天查询</div></th>
        </tr>
        <tr>
          <td class="CPanel"><table width="99%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
            <tr class="CTitle" >
              <td height="22" colspan="16" align="center" style="font-size:16px">查询日期</td>
            </tr>
            <tr bgcolor="#EEEEEE">
              <td colspan="16" align="center"><div align="center">
                <p>请输入您要查询的信息</p>
                <p>日期（yyyy-mm-dd）：
                  <input type="text" name="data" />
                </p>
              </div>
                    <div align="center" class="STYLE3">
                      <label></label>
                    </div>
                <div align="center" class="STYLE3">
                      <label></label>
                  </div></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <br />
      <div align="center">
        <input type="submit" name="Submit" value="查询" />
        &nbsp;&nbsp;
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" name="Submit2" value="取消" />
      </div>
    </div>
  </form>
							
		

							</div>
						</div>
					</div>
				</div>

				<div class="am-u-md-12">
					<div class="row">
						<div class="col-xs-12 col-md-6 col-lg-3">
							<div class="panel panel-blue panel-widget ">
								<div class="row no-padding">
									<div class="col-sm-3 col-lg-5 widget-left">
										<em class="glyphicon glyphicon-shopping-cart glyphicon-l"></em>
									</div>
									<div class="col-sm-9 col-lg-7 widget-right">
										<div class="large"><%=park.getKeliu() %></div>
										<div class="text-muted">客流量</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6 col-lg-3">
							<div class="panel panel-orange panel-widget">
								<div class="row no-padding">
									<div class="col-sm-3 col-lg-5 widget-left">
										<em class="glyphicon glyphicon-comment glyphicon-l"></em>
									</div>
									<div class="col-sm-9 col-lg-7 widget-right">
										<div class="large"><%=park.getRudian() %></div>
										<div class="text-muted">入店量</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6 col-lg-3">
							<div class="panel panel-teal panel-widget">
								<div class="row no-padding">
									<div class="col-sm-3 col-lg-5 widget-left">
										<em class="glyphicon glyphicon-user glyphicon-l"></em>
									</div>
									<div class="col-sm-9 col-lg-7 widget-right">
										<div class="large"><%=park.getNewnum() %></div>
										<div class="text-muted">新顾客</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6 col-lg-3">
							<div class="panel panel-red panel-widget">
								<div class="row no-padding">
									<div class="col-sm-3 col-lg-5 widget-left">
										<em class="glyphicon glyphicon-stats glyphicon-l"></em>
									</div>
									<div class="col-sm-9 col-lg-7 widget-right">
										<div class="large">1</div>
										<div class="text-muted">探针数目</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/.row-->
				</div>


				<div class="am-g">
					<!-- Row start -->
					<div class="am-u-md-3">
						<div class="card-box">
							<h4 class="header-title m-t-0 m-b-30">入店率</h4>
							<div class="widget-chart-1 am-cf">
								<div id="widget-chart-box-1" style="height: 110px;width: 110px;float: left;">
								</div>

								<div class="widget-detail-1" style="float: right;">
									<h2 class="p-t-10 m-b-0"> <%=park.getRdlv() %> </h2>
									<p class="text-muted">入店人数</p>
								</div>
							</div>
						</div>
					</div>
					<!-- col end -->
					<div class="am-u-md-3">
						<div class="card-box">
							<h4 class="header-title m-t-0 m-b-30">深访率</h4>
							<div class="widget-box-2">
								<div class="widget-detail-2">
									<span class="badge  pull-left m-t-20  am-round" style="color: #fff; background: #0e90d2;"><%=park.getSflv() %> <i class="zmdi zmdi-trending-up"></i> </span>
									<h2 class="m-b-0"> 322 </h2>
									<p class="text-muted m-b-25">深访人数</p>
								</div>
								<div class="am-progress am-progress-xs am-margin-bottom-0">
									<div class="am-progress-bar" style="width: 10%"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- col end -->
					<div class="am-u-md-3">
						<div class="card-box">
							<h4 class="header-title m-t-0 m-b-30">跳出率</h4>
							<div class="widget-chart-1 am-cf">
								<div id="widget-chart-box-2" style="height: 110px;width: 110px;float: left;">
								</div>

								<div class="widget-detail-1" style="float: right;">
									<h2 class="p-t-10 m-b-0"> <%=park.getTclv() %> </h2>
									<p class="text-muted">跳出人数</p>
								</div>
							</div>
						</div>
					</div>
					<!-- col end -->
					<div class="am-u-md-3">
						<div class="card-box">
							<h4 class="header-title m-t-0 m-b-30">新旧率</h4>
							<div class="widget-box-2">
								<div class="widget-detail-2">
									<span class="badge  pull-left m-t-20  am-round progress-bar-pink" style="color: #fff;">22% <i class="zmdi zmdi-trending-up"></i> </span>
									<h2 class="m-b-0"> <%=park.getZhlv() %> </h2>
									<p class="text-muted m-b-25">新顾客</p>
								</div>
								<div class="am-progress am-progress-xs am-margin-bottom-0" style="background: rgba(255, 138, 204, 0.2);">
									<div class="am-progress-bar progress-bar-pink" style="width: 80%"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- Row end -->
				</div>

				<div class="am-g">
					<!-- Row start -->
					<div class="am-u-md-4">
						<div class="card-box">
							<h4 class="header-title m-t-0">顾客分析</h4>
							<div id="index-pie-1" style="height: 345px;height: 300px;"></div>
						</div>
					</div>

					<div class="am-u-md-4">
						<div class="card-box">
							<h4 class="header-title m-t-0">驻店时长人数分布</h4>
							<div id="index-bar-1" style="height: 345px;height: 300px;"></div>
						</div>
					</div>

					
					<!-- Row end -->
				</div>

				<div class="am-g">
					<!-- col start -->
					<div class="am-u-md-4">
						<div class="card-box">
							<h4 class="header-title m-t-0 m-b-30">探针列表</h4>
							<div class="inbox-widget nicescroll" style="height: 315px; overflow: hidden; outline: none;" tabindex="5000">
								<a href="#">
									<div class="inbox-item">
										<div class="inbox-item-img"><img src="assets/img/wifi.png" class="img-circle" alt=""></div>
										<p class="inbox-item-author">00aabbcc</p>
										<p class="inbox-item-text">00:01:7a:aa:bb:cc</p>
										<p class="inbox-item-date"></p>
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
							<div class="am-scrollable-horizontal am-text-ms" style="height: 315px; font-family: '微软雅黑';">
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
											<td>00aabbcc</td>
											<td>00:01:7a:aa:bb:cc</td>
											<td>3</td>
											<td>山东省青岛经济技术开发区</td>
											<td><span class="label label-success">已选中</span></td>
										</tr>

										

										<!--

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

										-->

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