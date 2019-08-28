<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- <% LoginUser user = (LoginUser) request.getSession().getAttribute("loginInfo"); %> --%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>USER::Welcome to BITCAMP</title>

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
								<li><a href="#login">LOGIN</a></li>
								<li><a href="#join">Join</a></li>
								<li><a href="#member">member</a></li>
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
								<a class="btn btn-theme btn-sm btn-min-block" href="#login">LOGIN</a><a
									class="btn btn-theme btn-sm btn-min-block" href="#join">JOIN</a>
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
								<a class="btn btn-theme btn-sm btn-min-block" href="#login">LOGIN</a><a
									class="btn btn-theme btn-sm btn-min-block" href="#join">JOIN</a>
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




	<!-- Section: login -->
	<section id="login" class="home-section color-dark bg-white">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
						<div class="section-heading text-center">
							<h2 class="h-bold">Login</h2>
							<div class="divider-header"></div>
							<p>Login Bitcamp and Make a GREAT Reservation for Your
								Holidays!</p>
						</div>
					</div>
				</div>
			</div>
			<!--user divide-->
			<div class="col-md-12 text-center">
				<div class="">
					<a class="btn btn-theme btn-skin btn-sm btn-min-block" id="loginMemBtn"
						onclick="showMemberLogin()">MEMBER</a> <a
						class="btn btn-theme btn-sm btn-min-block" id="loginAdBtn"
						onclick="showAdminLogin()">ADMIN</a>
				</div>
			</div>
		</div>

		<div class="container">

			<div class="row marginbot-80">
				<div class="col-md-4 col-md-offset-4">
					<div id="sendmessage">Thank you for visit BitCamp!</div>
					<div id="errormessage"></div>
					
					<!-- MEM -->
					<form method="post" role="form" class="" id="loginForm">
						<div class="form-group">
							<input type="email" class="form-control" name="id" id="lid"
								placeholder="Your Email" data-rule="email" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="pw" id="lpw"
								placeholder="Your Password" />
							<div class="validation"></div>
						</div>
						<div class="text-center">
							<button type="button" class="btn btn-skin btn-lg btn-block" onclick="login()">Login
								Bitcamp</button>
						</div>
					</form>
					
					<!-- admin -->
					<form method="post" role="form" class="" id="loginAdForm">
						<div class="form-group">
							<input type="email" class="form-control" name="id" id="laid"
								placeholder="Your ADMIN ID" data-rule="email" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="pw" id="lapw"
								placeholder="Your Password" />
							<div class="validation"></div>
						</div>
						<div class="text-center">
							<button type="button" class="btn btn-skin btn-lg btn-block" onclick="loginAdmin()">ADMIN Login
								Bitcamp</button>
						</div>
					</form>

				</div>
			</div>


		</div>

	</section>
	<!-- /Section: login -->


	<!-- Section: join -->
	<section id="join" class="home-section color-dark bg-gray">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-6 col-lg-offset-3">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
						<div class="section-heading text-center">
							<h2 class="h-bold">Join</h2>
							<div class="divider-header"></div>
							<p>Join Bitcamp and Find a GREAT Room for Your Holiday
								Location!</p>
						</div>
					</div>
				</div>
			</div>
			<!--user divide-->
			<div class="col-md-12 text-center">
				<div class="">
					<a class="btn btn-theme btn-skin btn-sm btn-min-block" id="showMem"
						onclick="showMember()">MEMBER</a> <a
						class="btn btn-theme btn-sm btn-min-block" id="showAdmin"
						onclick="showAdmin()">ADMIN</a>
				</div>
			</div>
		</div>
		<!--mem-->
		<div class="container" id="memForm">
			<div class="row marginbot-80">
				<div class="col-md-6 col-md-offset-3">

					<div id="sendmessage">Thank you for Join BitCamp!</div>
					<div id="errormessage"></div>
					<form role="form" class="contactForm">
						<div class="form-group">
							<input type="email" class="form-control" name="id" id="id"
								placeholder="Your Email" data-rule="email"
								data-msg="Please enter a valid email" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="pw" id="pw"
								placeholder="Your Password" data-rule="minlen:8"
								data-msg="Please enter at least 8 chars of password" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="text" name="name" class="form-control" id="name"
								placeholder="Your Name" data-rule="minlen:4"
								data-msg="Please enter at least 4 chars" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="text" name="phone" class="form-control" id="phone"
								placeholder="Your Contact Number" data-rule="minlen:13"
								data-msg="Please enter at least 10 numbers" />
							<div class="validation"></div>
						</div>
						<div class="text-center">
							<button type="button" class="btn btn-skin btn-lg btn-block"
								onclick="join()">Join Bitcamp</button>
						</div>
					</form>

				</div>
			</div>


		</div>


		<!--admin-->
		<div class="container" id="adminForm" style="display: none">
			<div class="row marginbot-80">
				<div class="col-md-6 col-md-offset-3">

					<div id="sendmessage">Thank you for Join BitCamp!</div>
					<div id="errormessage"></div>
					<form action="" method="post" role="form" class="contactForm">
						<div class="form-group">
							<input type="text" class="form-control" name="id" id="id"
								placeholder="Your ADMIN ID" data-rule="minlen:4"
								data-msg="Please enter a valid ID" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="pw" id="pw"
								placeholder="Your Password" data-rule="minlen:4"
								data-msg="Please enter at least 8 chars of password" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="text" name="name" class="form-control" id="name"
								placeholder="Your Name" data-rule="minlen:4"
								data-msg="Please enter at least 4 chars" />
							<div class="validation"></div>
						</div>
						<div class="text-center">
							<button type="button" class="btn btn-skin btn-lg btn-block" onclick="joinAd()">REGISTER
								ADMIN</button>
						</div>
					</form>

				</div>
			</div>
		</div>
	</section>
	<!-- /Section: services -->

	<!-- Section: member -->
	<section id="member"
		class="home-section nopadd-bot color-dark bg-white text-center">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
						<div class="section-heading text-center">
							<h2 class="h-bold">Member List</h2>
							<div class="divider-header"></div>
							<p>Lorem ipsum dolor sit amet, agam perfecto sensibus usu at
								duo ut iriure.</p>
						</div>
					</div>
				</div>
			</div>

		</div>

		<!-- edit form -->
		<!--mem-->
		<div class="container" id="mEditForm">
			<div class="row marginbot-80">
				<div class="col-md-6 col-md-offset-3">
					<form role="form" class="contactForm" id="editform">
						<div class="form-group">
							<input type="hidden" name="idx" id="idx2">
							<input type="email" class="form-control" name="id" id="id2"
								placeholder="Your Email" data-rule="email"
								data-msg="Please enter a valid email"  disabled="disabled"/>
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="text" name="name" class="form-control" id="name2"
								placeholder="Your Name" data-rule="minlen:4"
								data-msg="Please enter at least 4 chars" />
							<div class="validation"></div>
						</div>
						<div class="form-group">
							<input type="text" name="phone" class="form-control" id="phone2"
								placeholder="Your Contact Number" data-rule="minlen:13"
								data-msg="Please enter at least 10 numbers" />
							<div class="validation"></div>
						</div>
						<div class="text-center">
							<input type="submit" class="btn btn-skin btn-lg btn-block" placeholder="EDIT USER INFO">
						</div>
					</form>

				</div>
			</div>
		</div>
		<!-- edit USer -->
		
		
		<div class="container">
			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
					<table class="table table-hover">
						<thead class="thead-dark">
							<tr>
								<th>no</th>
								<th>id</th>
								<th>name</th>
								<th>phone</th>
								<th>verify</th>
								<th>regdate</th>
								<th>out</th>
								<th>manage</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>111</td>
								<td>john@example.com</td>
								<td>Doe</td>
								<td>123456789</td>
								<td>Doe</td>
								<td>Doe</td>
								<td>Doe</td>
								<td>edit / del</td>
							</tr>
							<tr>
								<td>222</td>
								<td>mary@example.com</td>
								<td>Moe</td>
								<td>123456789</td>
								<td>Moe</td>
								<td>Moe</td>
								<td>Moe</td>
								<td>edit / del</td>
							</tr>
							<tr>
								<td>333</td>
								<td>july@example.com</td>
								<td>Dooley</td>
								<td>123456789</td>
								<td>Dooley</td>
								<td>Dooley</td>
								<td>Dooley</td>
								<td>edit / del</td>
							</tr>
							<div id="userlist"></div>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!-- /Section: member -->


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
	<script src="static/default.js"></script>

</body>

</html>

<%-- 
<c:if test="${sessionScope.adminInfo ne null}">
	<c:redirect url="welcome_admin.jsp"/>
</c:if>

<c:if test="${sessionScope.loginInfo ne null}">
	<c:redirect url="welcome.jsp"/>
</c:if> --%>