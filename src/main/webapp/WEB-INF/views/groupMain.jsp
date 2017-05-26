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
	<!--header start--> <header class="header black-bg">
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
	</div>
	<!-- **********************************************************************************************************************************************************
    			  MAIN CONTENT
      *********************************************************************************************************************************************************** -->
	<!-- 파일공유 '추가' 버튼  Modal -->
	<div class="modal fade" id="fileSharing" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">파일 업로드</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal style-form" method="post">
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">파일이름</label>
							<div class="col-sm-10">
								<input type="text" class="form-control">
							</div>
						</div>
						<div class="form-group">
                            <label class="col-sm-2 col-sm-2 control-label">파일 업로드</label>
                            <div class="col-sm-10">
                                <button type="button" class="btn btn-theme02"><i class="fa fa-check"></i> 업로드</button>
                            </div>
                        </div>
						<div class="centered">
							<button type="submit" class="btn btn-primary">등록</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">취소</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<!-- 세개가 한 줄!!-->
			<div class="row">
				<div class="col-md-9 mt">
					<div class="content-panel">
						<table class="table table-hover">
							<h4>
								<i class="fa fa-angle-right"></i> 게시판
								<i class="fa fa-angle-right more"><a href="board_write.html">게시글 쓰기</a></i> 
								<i class="fa fa-angle-right more"><a href="board.html"> 더보기</a></i>
							</h4>
							<hr>
							<thead>
								<tr>
									<th>#</th>
									<th>제목</th>
									<th>작성자</th>
									<th>게시일</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>1</td>
									<td><a href="board_read.html">Mark</a></td>
									<td>Otto</td>
									<td>2017.05.24</td>
								</tr>

								<tr>
									<td>2</td>
									<td><a href="board_read.html">Mark</a></td>
									<td>Thornton</td>
									<td>2017.05.10</td>
								</tr>
								<tr>
									<td>3</td>
									<td><a href="board_read.html">Mark</a></td>
									<td>Mosa</td>
									<td>2017.05.01</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="row mt">
						<!-- SERVER STATUS PANELS -->
						<!-- /col-md-4-->
						<div class="col-lg-4 col-md-4 col-sm-4 desc">
							<div class="content-panel pn">
								<div id="profile-01">
									<h3></h3>
								</div>
								<div class="profile-01 centered">
								<a data-toggle="modal" data-target="#fileSharing" href="#">
                          			<p>추가</p>
								</div>
								</a>
								<div class="centered">
									<h6>
										<i class="fa fa-heart"></i><br />게시물을 추가해 주세요!
									</h6>
								</div>
							</div>
							<!--/content-panel -->
						</div>
						<!--/col-md-4 -->

						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
							<div class="project-wrapper" data-toggle="dropdown">
								<div class="project">
									<div class="photo-wrapper">
										<div class="white-header">
											<h5>게시물 이름</h5>
										</div>
										<div class="photo">
											<a class="fancybox" href="">
												<img class="img-responsive" src="<c:url value='resources/img/gongU.jpg' />" alt="">
											</a>
										</div>
										<div class="overlay"></div>
									</div>
								</div>
							</div>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">미리보기</a></li>
								<li><a href="#">다운로드</a></li>
								<li><a href="#">삭제</a></li>
							</ul>
						</div>
						<!-- col-lg-4 -->

						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
							<div class="project-wrapper" data-toggle="dropdown">
								<div class="project">
									<div class="photo-wrapper">
										<div class="white-header">
											<h5>게시물 이름</h5>
										</div>
										<div class="photo">
											<a class="fancybox" href="">
												<img class="img-responsive" src="<c:url value='resources/img/gongU.jpg' />" alt="">
											</a>
										</div>
										<div class="overlay"></div>
									</div>
								</div>
							</div>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">미리보기</a></li>
								<li><a href="#">다운로드</a></li>
								<li><a href="#">삭제</a></li>
							</ul>
						</div>
						<!-- col-lg-4 -->

					</div>
					<div class="row mt">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
							<div class="project-wrapper" data-toggle="dropdown">
								<div class="project">
									<div class="photo-wrapper">
										<div class="white-header">
											<h5>게시물 이름</h5>
										</div>
										<div class="photo">
											<a class="fancybox" href="">
												<img class="img-responsive" src="<c:url value='resources/img/gongU.jpg' />" alt="">
											</a>
										</div>
										<div class="overlay"></div>
									</div>
								</div>
							</div>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">미리보기</a></li>
								<li><a href="#">다운로드</a></li>
								<li><a href="#">삭제</a></li>
							</ul>
						</div>
						<!-- col-lg-4 -->

					</div>
					<!-- /row -->

				</div>
				<!-- /col-lg-9 END SECTION MIDDLE -->


				<!-- **********************************************************************************************************************************************************
     RIGHT SIDEBAR CONTENT
     *********************************************************************************************************************************************************** -->
				<div class="col-lg-3 ds">

					<!--COMPLETED ACTIONS DONUTS CHART-->
					<h3>회의 가능 시간</h3>
					<div class="mb">
						<div class="white-panel desc donut-chart">
							<div class="row">
								<div class="col-sm-6 col-xs-6 goleft">
									<p>
										<i class="fa fa-database"></i> 50%
									</p>
								</div>
							</div>
							<canvas id="serverstatus01" height="120" width="120"></canvas>
							<script>
								var doughnutData = [
										{
											value: 50,
											color:"#68dff0"
										},
										{
											value : 50,
											color : "#fdfdfd"
										}
									];
									var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
							</script>
						</div>
						<!--/grey-panel -->
					</div>

					<!-- USERS ONLINE SECTION -->
					<h3>채팅</h3>
					<!-- First Member -->
					<div class="desc">
						<div class="thumb">
							<img class="img-circle" src="<c:url value='resources/img/ui-divya.jpg'/>" width="35px" height="35px" align="">
						</div>
						<div class="details">
							<p>
								<a href="#">DIVYA MANIAN</a><br />
								<muted>Available</muted>
							</p>
						</div>
					</div>
					<!-- Second Member -->
					<div class="desc">
						<div class="thumb">
							<img class="img-circle" src="<c:url value='resources/img/ui-sherman.jpg'/>" width="35px" height="35px" align="">
						</div>
						<div class="details">
							<p>
								<a href="#">DJ SHERMAN</a><br />
								<muted>I am Busy</muted>
							</p>
						</div>
					</div>
					<!-- Third Member -->
					<div class="desc">
						<div class="thumb">
							<img class="img-circle" src="<c:url value='resources/img/ui-danro.jpg'/>" width="35px" height="35px" align="">		
						</div>
						<div class="details">
							<p>
								<a href="#">DAN ROGERS</a><br />
								<muted>Available</muted>
							</p>
						</div>
					</div>
					<!-- Fourth Member -->
					<div class="desc">
						<div class="thumb">
							<img class="img-circle" src="<c:url value='resources/img/ui-zac.jpg'/>" width="35px" height="35px" align="">		
						</div>
						<div class="details">
							<p>
								<a href="#">Zac Sniders</a><br />
								<muted>Available</muted>
							</p>
						</div>
					</div>
					<!-- Fifth Member -->
					<div class="desc">
						<div class="thumb">
							<img class="img-circle" src="<c:url value='resources/img/ui-sam.jpg'/>" width="35px" height="35px" align="">		
						</div>
						<div class="details">
							<p>
								<a href="#">Marcel Newman</a><br />
								<muted>Available</muted>
							</p>
						</div>
					</div>
				</div>
				<!-- /col-lg-3 -->
			</div>
			<!-- /row -->
		</section>
	</section>

	<footer class="site-footer">
		<div class="text-center">
			모여다우|김다혜|이희민|한대호 
			<a href="#" class="go-top"> 
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