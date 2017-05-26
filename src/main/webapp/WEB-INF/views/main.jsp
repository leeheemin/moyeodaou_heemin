<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>모여다우</title>
	
	<!-- Bootstrap core CSS -->
	<link href="<c:url value='resources/css/bootstrap.css'/>" rel="stylesheet">
	
	<!--external CSS-->
	<link href="<c:url value='resources/font-awesome/css/font-awesome.css'/>" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<c:url value='resources/lineicons/style.css'/>">
	
	<!-- Custom styles for this template -->
	<link href="<c:url value='resources/css/style.css'/>" rel="stylesheet">
	
	<link href="<c:url value='resources/css/style-responsive.css'/>" rel="stylesheet">
	
	<script src="<c:url value='resources/js/chart-master/Chart.js'/>"></script>

</head>
<body>

	<section id="container"> <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
	<!--header start--> 
	<header class="header black-bg">
	<div class="sidebar-toggle-box">
		<div class="fa fa-bars tooltips" data-placement="right"
			data-original-title="Toggle Navigation"></div>
	</div>
	<!--logo start--> <a href="main.html" class="logo"><b>모여다우</b></a> <!--logo end-->
	<div class="nav notify-row" id="top_menu">
		<!--  notification start -->
		<ul class="nav top-menu">
			<!-- inbox dropdown start-->
			<li id="header_inbox_bar" class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
					<i class="fa fa-envelope-o"></i> <span class="badge bg-theme">5</span>
				</a>
				<ul class="dropdown-menu extended inbox">
					<div class="notify-arrow notify-arrow-green"></div>
					<li>
						<p class="green">You have 5 new messages</p>
					</li>
					<li>
						<a href="index.html#">
							<span class="photo">
								<img alt="avatar" src="assets/img/ui-zac.jpg">
							</span>
							<span class="subject">
								<span class="from">Zac Snider</span>
								<span class="time">Just now</span>
							</span>
							<span class="message"> Hi mate, how is everything? </span>
						</a>
					</li>
					<li>
						<a href="index.html#">
							<span class="photo">
								<img alt="avatar" src="assets/img/ui-zac.jpg">
							</span>
							<span class="subject">
								<span class="from">Zac Snider</span>
								<span class="time">Just now</span>
							</span>
							<span class="message"> Hi mate, how is everything? </span>
						</a>
					</li>
					<li>
						<a href="index.html#">
							<span class="photo">
								<img alt="avatar" src="assets/img/ui-zac.jpg">
							</span>
							<span class="subject">
								<span class="from">Zac Snider</span>
								<span class="time">Just now</span>
							</span>
							<span class="message"> Hi mate, how is everything? </span>
						</a>
					</li>
					<li>
						<a href="index.html#">
							<span class="photo">
								<img alt="avatar" src="assets/img/ui-zac.jpg">
							</span>
							<span class="subject">
								<span class="from">Zac Snider</span>
								<span class="time">Just now</span>
							</span>
							<span class="message"> Hi mate, how is everything? </span>
						</a>
					</li>
					<li>
						<a href="index.html#">See all messages</a>
					</li>
				</ul>
			</li>
			<!-- inbox dropdown end -->
		</ul>
		<!--  notification end -->
	</div>
	<div class="top-menu">
    	<ul class="nav pull-right top-menu">
            <a class="main_name dont-show">{김이름} 님</a>
            <li>
            	<a class="logout" href="login.html">Logout</a>
           	</li>
    	</ul>
    </div>
	
	</header> <!--header end--> 
	<!-- **********************************************************************************************************************************************************
    			  MAIN CONTENT
      *********************************************************************************************************************************************************** -->
	<!--main content start--> 
	<section id="main-content-center">
              <div>
                  <div class="main-chart">
                  	<div class="row mtbox">
                  		<div class="col-lg-3 col-lg-offset-4 col-md-5 col-md-offset-3 col-sm-5 col-sm-offset-3 box0">
                  			<div class="box1" data-toggle="modal" data-target="#makeGroup">
					  			<span class="li_cloud"></span>
					  			<h3>+그룹 생성</h3>
                  			</div>
					  			<p>그룹을 자유롭게 생성해 주세요!</p>
                  		</div>
                  	</div><!-- /row mt -->	
                    <!-- 그룹 생성 modal -->
                      <div class="modal fade" id="makeGroup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                          <div class="modal-dialog">
                            <div class="modal-content">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">그룹 생성</h4>
                              </div>
                              <div class="modal-body">
                                <form class="form-horizontal style-form" method="post">
                                      <div class="form-group">
                                          <label class="col-sm-2 col-sm-2 control-label">그룹명</label>
                                          <div class="col-sm-10">
                                              <input type="text" class="form-control">
                                          </div>
                                      </div>
                                    <div class="form-group">
                                          <label class="col-sm-2 col-sm-2 control-label">그룹 소개</label>
                                          <div class="col-sm-10">
                                              <input type="text" class="form-control" placeholder="50자 내로 입력해주세요!">
                                          </div>
                                      </div>
                                    <div class="form-group">
                                          <label class="col-sm-2 col-sm-2 control-label">이미지</label>
                                          <div class="col-sm-10">
                                              <button type="button" class="btn btn-theme02"><i class="fa fa-check"></i> 이미지 업로드</button>
                                          </div>
                                      </div>
                                    <div class="centered">
                                      <button type="submit" class="btn btn-primary">생성</button>
                                      <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                                    </div>
                                  </form>
                              </div>
                            </div>
                          </div>
                        </div> 
                      
                      <div class="row mt">
                      <!-- SERVER STATUS PANELS -->
                      	<div class="col-md-4 col-sm-4 mb">
                            <a href="group.html">
                                <div class="white-panel pn" >
                                    <div class="white-header">
                                        <h5>그룹명</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-6 goleft">
                                            <p><i class="fa fa-heart"></i> 인원 수</p>
                                        </div>
                                        <div class="col-sm-6 col-xs-6"></div>
                                    </div>
                                    <div class="centered">
                                            <img src="assets/img/product.png" width="120">
                                    </div>
                                </div>
                            </a>
                      	</div><!-- /col-md-4-->
                      	<div class="col-md-4 col-sm-4 mb">
                            <a href="group.html">
                                <div class="white-panel pn" >
                                    <div class="white-header">
                                        <h5>그룹명</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-6 goleft">
                                            <p><i class="fa fa-heart"></i> 인원 수</p>
                                        </div>
                                        <div class="col-sm-6 col-xs-6"></div>
                                    </div>
                                    <div class="centered">
                                            <img src="assets/img/product.png" width="120">
                                    </div>
                                </div>
                            </a>
                      	</div><!-- /col-md-4-->
                          <div class="col-md-4 col-sm-4 mb">
                      		<a href="group.html">
                                <div class="white-panel pn">
                                    <div class="white-header">
                                        <h5>그룹명</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-6 goleft">
                                            <p><i class="fa fa-heart"></i> 인원 수</p>
                                        </div>
                                        <div class="col-sm-6 col-xs-6"></div>
                                    </div>
                                    <div class="centered">
                                            <img src="assets/img/product.png" width="120">
                                    </div>
                                </div>
                            </a>
                      	</div>
                        <div class="col-md-4 col-sm-4 mb">
                      		<a href="group.html">
                                <div class="white-panel pn">
                                    <div class="white-header">
                                        <h5>그룹명</h5>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-6 goleft">
                                            <p><i class="fa fa-heart"></i> 인원 수</p>
                                        </div>
                                        <div class="col-sm-6 col-xs-6"></div>
                                    </div>
                                    <div class="centered">
                                            <img src="assets/img/product.png" width="120">
                                    </div>
                                </div>
                            </a>
                        </div><!-- /row -->
                  </div><!-- /col-lg-9 END SECTION MIDDLE -->
              </div>
          </div>
      </section><!-- /MAIN CONTENT -->
	
	<footer class="site-footer">
		<div class="text-center">
			모여다우|김다혜|이희민|한대호 
			<a href="index.html#" class="go-top"> 
				<i class="fa fa-angle-up"></i>
			</a>
		</div>
	</footer> <!--footer end--> </section>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="<c:url value='resources/js/jquery.js' />"></script>
	<script src="<c:url value='resources/js/jquery-1.8.3.min.js' />"></script>
	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>

	<!--common script for all pages-->
	<script src="<c:url value='resources/js/common-scripts.js'/>"></script>

</body>
</html>