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
    			  MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
	<!--sidebar start--> 
	<aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              	  <p class="centered"><a href="profile.html"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">그룹명</h5>
              	  	
                  <li class="mt">
                      <a class="active" href="#">
                          <i class="fa fa-dashboard"></i>
                          <span>메인화면</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a data-toggle="modal" data-target="#leaveThisGroup" href="#">
                          <i class="fa fa-dashboard"></i>
                            <span>탈퇴</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="#" data-toggle="modal" data-target="#inviteGroup">
                          <i class="fa fa-dashboard"></i>
                          <span>팀원추가</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="#" data-toggle="modal" data-target="#removeThisGroup">
                          <i class="fa fa-dashboard"></i>
                          <span>그룹해체</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="#">
                          <i class="fa fa-dashboard"></i>
                          <span>일정등록</span>
                      </a>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside> <!--sidebar end--> 
	<!-- 탈퇴 modal -->
	<div class="modal fade" id="leaveThisGroup" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">탈퇴</h4>
				</div>
				<div class="modal-body">정말로 탈퇴하시겠어요?</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">확인</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 그룹해체 modal -->
	<div class="modal fade" id="removeThisGroup" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">그룹해체</h4>
				</div>
				<div class="modal-body">
					정말로 삭제하시겠어요?<br> (그룹원이 존재할 경우 삭제하실 수 없습니다.)
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">확인</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 그룹 초대 modal -->
	<div class="modal fade" id="inviteGroup" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">그룹 초대</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal style-form" method="post">
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">email주소</label>
							<div class="col-sm-10">
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="centered">
							<button type="submit" class="btn btn-primary">초대</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div> <!--sidebar end--> 
	<!-- **********************************************************************************************************************************************************
    			  MAIN CONTENT
      *********************************************************************************************************************************************************** -->
	<!--main content start--> 
	<section id="main-content"> 
		<section class="wrapper">
			<h3>
				<i class="fa fa-angle-right"></i> 게시판
			</h3>
		
			<!-- BASIC FORM ELELEMNTS -->
			<div class="row mt">
				<div class="col-lg-12">
					<div class="form-panel">
						<h4 class="mb">
							<i class="fa fa-angle-right"></i> 게시글
						</h4>
						<form class="form-horizontal style-form" method="post">
							<div class="form-group">
								<label class="col-sm-2 col-sm-2 control-label">제목</label>
								<div class="col-sm-10">
									<p class="form-control-static">제목!!!</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 col-sm-2 control-label">작성자</label>
								<div class="col-lg-10">
									<p class="form-control-static">email@example.com</p>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 col-sm-2 control-label">내용</label>
								<div class="col-sm-10">
									<p class="form-control-static">내용!!!!!!!!!</p>
								</div>
							</div>
							<button type="button" class="btn btn-default btn-lg btn-block"
								data-toggle="">삭제</button>
							<button type="button" class="btn btn-default btn-lg btn-block">수정</button>
							<button type="submit" class="btn btn-primary btn-lg btn-block">목록</button>
						</form>
					</div>
				</div>
				<!-- col-lg-12-->
			</div><!-- /row -->
		</section><!--/wrapper --> 
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