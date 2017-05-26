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

	<div id="login-page">
		<div class="container">
			<form class="form-login" action="login.html">
				<h2 class="form-login-heading">가입</h2>
				<div class="login-wrap">
					<input type="text" class="form-control" placeholder="User ID"
						autofocus> <br> <input type="password"
						class="form-control" placeholder="비밀번호"> <br> <input
						type="password" class="form-control" placeholder="비밀번호 확인">
					<br> <input type="text" class="form-control" placeholder="이름">
					<br>
					<button class="btn btn-theme btn-block" type="submit">가입하기</button>
				</div>
			</form>
		</div>
	</div>

	<!-- js placed at the end of the document so the pages load faster -->
	<script src="<c:url value='resources/js/jquery.js' />"></script>
	<script src="<c:url value='resources/js/jquery-1.8.3.min.js' />"></script>
	<script src="<c:url value='resources/js/bootstrap.min.js'/>"></script>

	<!-- 가입, 로그인화면 -->
    <script type="text/javascript" src="<c:url value='resources/js/jquery.backstretch.min.js'/>"></script>
    <script>
        $.backstretch("<c:url value='resources/img/login-bg.jpg'/>", {speed: 500});
    </script>
    
	<!--common script for all pages-->
	<script src="<c:url value='resources/js/common-scripts.js'/>"></script>

</body>
</html>