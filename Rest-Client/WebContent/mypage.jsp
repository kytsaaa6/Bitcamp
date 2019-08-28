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

<title>My page:: BITCAMP</title>

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


<%-- 
<%= (LoginUser)request.getSession().getAttribute("loginInfo") %> --%>

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
                                <li class="active"><a href="welcome.jsp">Home</a></li>
                                <li><a href="#myinfo">my info</a></li>
                                <li><a href="#mybooking">my booking</a></li>
                                <li><a href="#myinfo">Review</a></li>
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


<!-- Section: myinfo -->
  <section id="myinfo" class="home-section color-dark bg-gray">
    <div class="container marginbot-50">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
          <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
            <div class="section-heading text-center">
              <h2 class="h-bold">My info</h2>
              <div class="divider-header"></div>
              <p>Check your Info when registered or revised</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="text-center">
        <div class="container">
            <div class="row col-md-6 col-md-offset-3">
                <div class="">
                    <div class="wow fadeInLeft" data-wow-delay="0.2s">
                        <!--mem-->
                        <!-- 원래 서비스용,,, -->
                        <div class="service-box">
                            <div class="service-icon">
                                <span class="fa fa-cogs fa-5x"></span>
                            </div>

                            <form class="contactForm marginbot-40">
                                <div class="form-group">
                                    ID
                                    <span class="form-control" id="id"></span>
                                </div>
                                <div class="form-group">
                                    name
                                    <span class="form-control" id="name"></span>
                                </div>
                                <div class="form-group">
                                    phone
                                    <span class="form-control" id="phone"></span>
                                </div>
                                <div class="form-group">
                                    regdate
                                    <span class="form-control" id="regdate"></span>
                                </div>
                                
                            </form>

                            <div class="service-desc">
                                <!--여기에 idx 넣어서 보내준다!-->
                                <a class="btn btn-skin" id="btn-edit">want to edit info</a>
                                <a class="btn btn-skin" id="btn-out">want to sign out</a>
                            </div>
                        </div><!--mem / servicebox-->
                    </div>
                </div>
            </div>
        </div>
    </div>
  </section>
<!-- /Section: myinfo -->



    <!-- Section: mybooking -->
    <section id="mybooking" class="home-section nopadd-bot color-dark bg-white text-center">
        <div class="container marginbot-50">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
                        <div class="section-heading text-center">
                            <h2 class="h-bold">My booking</h2>
                            <div class="divider-header"></div>
                            <p>Check your Info when registered or revised</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center">
            <div class="container">
                <!--table,,,-->
                <div class="row marginbot-80">
                    <div class="col-md-8 col-md-offset-2">
                        <table class="table table-hover">
                            <thead class="thead-dark">
                                <tr>
                                    <th>no</th>
                                    <th>hotel</th>
                                    <th>address</th>
                                    <th>room</th>
                                    <th>check in</th>
                                    <th>check out</th>
                                    <th>date</th>
                                    <th>price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>111</td>
                                    <td>제주신라호텔</td>
                                    <td>중문관광로72번길 75, 서귀포, 대한민국</td>
                                    <td>디럭스 룸</td>
                                    <td>2019-08-27</td>
                                    <td>2019-08-27</td>
                                    <td>2019-08-26 14:27:53</td>
                                    <td>&#36;200,000</td>
                                </tr>
                                <tr>
                                    <td colspan="8">
                                        222224444
                                    </td>
                                </tr>
                                <tr>
                                    <td>222</td>
                                    <td>코스테이</td>
                                    <td>서울특별시 강서구 곰달래로 247</td>
                                    <td>디럭스 룸</td>
                                    <td>2019-08-27</td>
                                    <td>2019-08-27</td>
                                    <td>2019-08-26 14:45:30</td>
                                    <td>&#36;200,000</td>
                                </tr>
                                <tr>
                                    <td colspan="8">
                                        222224444
                                    </td>
                                </tr>
                                <tr>
                                    <td>333</td>
                                    <td>제주신라호텔</td>
                                    <td>중문관광로72번길 75, 서귀포, 대한민국</td>
                                    <td>디럭스 룸</td>
                                    <td>2019-08-27</td>
                                    <td>2019-08-27</td>
                                    <td>2019-08-26 14:45:34</td>
                                    <td>&#36;200,000</td>
                                </tr>
                                <tr>
                                    <td colspan="8">
                                        222224444
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                       
                        <!-- api 용 테스트 테이블 여행리스트--> 
                        <table class="table table-hover" id="apitourtable">
                            <thead class="thead-dark">
                                <tr>
                                    <th>stationName</th>
                                    <th>mangName</th>
                                    <th>pm10Value</th>
                                    <th>미세먼지</th>
                                    <th>pm25Value</th>
                                    <th>초미세먼지</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                            </tbody>
                        </table>
                       <!-- api 용 테스트 테이블 전체리스트 --> 
                        <table class="table table-hover" id="apitable">
                            <thead class="thead-dark">
                                <tr>
                                    <th>stationName</th>
                                    <th>mangName</th>
                                    <th>pm10Value</th>
                                    <th>미세먼지</th>
                                    <th>pm25Value</th>
                                    <th>초미세먼지</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                            </tbody>
                        </table>
                        
                    </div>
                </div>


                <!---->
                <div class="row col-md-6 col-md-offset-3">
                    <div class="">
                        <div class="wow fadeInLeft" data-wow-delay="0.2s">
                            <!--mem-->
                            <!-- 원래 서비스용,,, -->
                            <div class="service-box">
                                <div class="service-icon">
                                    <span class="fa fa-cogs fa-5x"></span>
                                </div>

                                <form class="contactForm marginbot-40">
                                    <div class="form-group">
                                        ID
                                        <span class="form-control" id="id"></span>
                                    </div>

                                </form>

                                <div class="service-desc">
                                    <!--여기에 idx 넣어서 보내준다!-->
                                    <a class="btn btn-skin" id="btn-edit">want to edit info</a>
                                    <a class="btn btn-skin" id="btn-out">want to sign out</a>
                                </div>
                            </div>
                            <!--mem / servicebox-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /Section: mybooking -->



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
