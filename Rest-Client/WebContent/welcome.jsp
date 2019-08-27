<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Welcome to BITCAMP</title>

<!-- css -->
<link href="static/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="static/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="static/css/nivo-lightbox.css" rel="stylesheet" />
<link href="static/css/nivo-lightbox-theme/default/default.css"
	rel="stylesheet" type="text/css" />
<link href="static/css/owl.carousel.css" rel="stylesheet" media="screen" />
<link href="static/css/owl.theme.css" rel="stylesheet" media="screen" />
<link href="static/css/flexslider.css" rel="stylesheet" />
<link href="static/css/animate.css" rel="stylesheet" />
<link href="static/css/style.css" rel="stylesheet">
<link href="static/color/default.css" rel="stylesheet">
<link href="static/default.css" rel="stylesheet">
<!-- =======================================================
    Theme Name: Shuffle
    Theme URL: https://bootstrapmade.com/bootstrap-3-one-page-template-free-shuffle/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

	<!-- Navigation -->
	<div id="navigation">
		<nav class="navbar navbar-custom" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<div class="site-logo">
							<a href="main" class="brand">BitCamp</a>
						</div>
					</div>


					<div class="col-md-10">

						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#menu">
								<i class="fa fa-bars"></i>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="menu">
							<ul class="nav navbar-nav navbar-right">
								<li class="active"><a href="#intro">Home</a></li>
								<li><a href="#">Book</a></li>
								<li><a href="#">Review</a></li>
								<li><a href="#">mypage</a></li>
								<li><a onclick="logout()">Logout</a></li>
							</ul>
						</div>
						<!-- /.Navbar-collapse -->

					</div>
				</div>
			</div>
			<!-- /.container -->
		</nav>
	</div>
	<!-- /Navigation -->


	<section id="intro" class="home-slide text-light">

		<!-- Carousel -->
		<div id="carousel-example-generic" class="carousel "
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img
						src="https://cdn.pixabay.com/photo/2014/07/20/17/01/hotel-room-key-397946_1280.jpg"
						alt="First slide" style="height: 600px;">
					<!-- Static Header -->
					<div class="header-text hidden-xs">
						<div class="col-md-12 text-center">
							<br>
							<br>
							<h2 class="h-bold">
								<span>Welcome to BitCamp</span>
							</h2>
							<br>
							<h3 class="h-bold">
								<span>cozy and comfort rooms Waiting for your happy
									vacation</span>
							</h3>
							<br>
							<div class="">
								<a class="btn btn-theme btn-sm btn-min-block" href="#">Book</a><a
									class="btn btn-theme btn-sm btn-min-block" href="#">Review</a>
							</div>
						</div>
					</div>
					<!-- /header-text -->
				</div>
				<div class="item">
					<img
						src="https://cdn.pixabay.com/photo/2017/09/15/16/57/room-2752817_1280.jpg"
						alt="Second slide" style="height: 600px;">
					<!-- Static Header -->
					<div class="header-text hidden-xs">
						<div class="col-md-12 text-center">
							<br>
							<br>
							<h2 class="h-bold">
								<span>Welcome to BitCamp</span>
							</h2>
							<br>
							<h3 class="h-bold">
								<span>cozy and comfort rooms Waiting for your happy
									vacation</span>
							</h3>
							<br>
							<div class="">
								<a class="btn btn-theme btn-sm btn-min-block" href="#">Book</a><a
									class="btn btn-theme btn-sm btn-min-block" href="#">Review</a>
							</div>
						</div>
					</div>
					<!-- /header-text -->
				</div>

				<!-- Controls -->
			</div>
			<a class="left carousel-control" href="#carousel-example-generic"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>

		<!-- /carousel -->

	</section>
	<!-- /Section: intro -->





	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">

					<div class="text-center">
						<a href="#intro" class="totop"><i class="fa fa-angle-up fa-3x"></i></a>
						<p>&copy; Shuffle Theme - All Rights Reserved</p>
						<div class="credits">
							<!--
                All the links in the footer should remain intact.
                You can delete the links only if you purchased the pro version.
                Licensing information: https://bootstrapmade.com/license/
                Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Shuffle
              -->
							Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- Core JavaScript Files -->
	<script src="static/js/jquery.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/jquery.sticky.js"></script>
	<script src="static/js/jquery.flexslider-min.js"></script>
	<script src="static/js/jquery.easing.min.js"></script>
	<script src="static/js/jquery.scrollTo.js"></script>
	<script src="static/js/jquery.appear.js"></script>
	<script src="static/js/stellar.js"></script>
	<script src="static/js/wow.min.js"></script>
	<script src="static/js/owl.carousel.min.js"></script>
	<script src="static/js/nivo-lightbox.min.js"></script>
	<script src="static/js/custom.js"></script>
	<!-- <script src="static/contactform/contactform.js"></script> -->
	<script src="static/user_ny.js"></script>

</body>

</html>
<%-- <c:if test="${sessionScope.loginInfo eq null}">
	<c:redirect url="index.jsp"/>
</c:if> --%>
<%-- <c:if test="${sessionScope.loginInfo eq null}">
	<script>location.replace("index.jsp");</script>
</c:if> --%>
<%-- <c:if test="${empty loginInfo}">
	<script>
		alert('로그인필요!!!');
		location.href = '<%= request.getContextPath()%>/index.jsp';
	</script>
</c:if> --%>
