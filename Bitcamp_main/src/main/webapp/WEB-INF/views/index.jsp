<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Bitcamp | where you face the world</title>

  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/resources/css/nivo-lightbox.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/resources/css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
  <link href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" rel="stylesheet" media="screen" />
  <link href="${pageContext.request.contextPath}/resources/css/owl.theme.css" rel="stylesheet" media="screen" />
  <link href="${pageContext.request.contextPath}/resources/css/flexslider.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/color/default.css" rel="stylesheet">
  
  <!-- =======================================================
    Theme Name: Shuffle
    Theme URL: https://bootstrapmade.com/bootstrap-3-one-page-template-free-shuffle/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
  
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<!-- Hotel JS -->
<script src="<c:url value="/static/js/user.js"/>" type="text/javascript"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->

<!-- booking Form CSS -->
<link href="${pageContext.request.contextPath}/static/css/booking.css" rel="stylesheet" type="text/css" >

<!-- Hotel CSS -->
<link href="${pageContext.request.contextPath}/static/css/hotel.css" rel="stylesheet" >

 <!-- datepicker -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

 <!--  kakao api -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>



<style>
#mu {
	width: 1000px;
	height: 500px;
	border: 1px solid #ddd;
	margin-left: 60px;
	border-radius: 50px;
}

#bookingChk {
	width: 800px;
	margin-top: 30px;
	margin-left: 70px;
}

#bookingChk td {
	
	font-size: 30px;
	text-align: left;
	padding: 20px 0;
	padding-left: 50px;
	border-bottom: 1px solid #ddd;
}
#bookingChk th {
	
}
.muin {
	
}

#h_name2 {

}
#r_name2 {

}
#r_price2 {
}

.ib {
	font-size: 26px;
	color: red;
	text-align: center;
	padding-top: 10px;
}
	
#mupay {
	margin-left: 250px;
}	

#kakaopay-btn {
	margin-left: 80px;
	width: 200px;
}
	
</style>
<style>
/*datepicer 버튼 롤오버 시 손가락 모양 표시*/
.ui-datepicker-trigger{cursor: pointer;}
/*datepicer input 롤오버 시 손가락 모양 표시*/
.hasDatepicker{cursor: pointer;}
</style>

</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

<!-- Navigation -->
  <div id="navigation">
    <nav class="navbar navbar-custom" role="navigation">
      <div class="container">
        <div class="row">
          <!-- 로고 -->
          <div class="col-md-2">
            <div class="site-logo">
              <a href="#" class="brand">BITCAMP</a>
            </div>
          </div>
          <!-- 네브바 -->
          <div class="col-md-10">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu"><i class="fa fa-bars"></i></button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="menu">
              <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#sectionHotel">예약가능한 호텔확인!</a></li>
                <li><a href="#sectionReserv">예약 페이지</a></li>
                <li><a href="#sectionPayment">결제 진행</a></li>
                <li><a href="#sectionConfirm">예약 완료 확인</a></li>
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
  
  <!--메인 캐러셀  -->
  <section id="sectionMain" class="home-slide text-light">
    <!-- Carousel -->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      </ol>
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item active">
          <img src="<c:url value="/resources/img/slide1.jpg" />" alt="First slide">
          <!-- Static Header -->
          <div class="header-text hidden-xs">
            <div class="col-md-12 text-center">
              <h2><span>Welcome to Shuffle</span></h2>
              <br>
              <h3><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></h3>
              <br>
              <div class="">
                <a class="btn btn-theme btn-sm btn-min-block" href="#about">About us</a><a class="btn btn-theme btn-sm btn-min-block" href="#works">Our works</a></div>
            </div>
          </div>
          <!-- /header-text -->
        </div>
        <div class="item">
          <img src="<c:url value="/resources/img/slide2.jpg" />" alt="Second slide">
          <!-- Static Header -->
          <div class="header-text hidden-xs">
            <div class="col-md-12 text-center">
              <h2><span>Awesome Bootstrap template</span></h2>
              <br>
              <h3><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></h3>
              <br>
              <div class="">
                <a class="btn btn-theme btn-sm btn-min-block" href="#about">About us</a><a class="btn btn-theme btn-sm btn-min-block" href="#works">Our works</a></div>
            </div>
          </div>
          <!-- /header-text -->
        </div>
        <div class="item">
          <img src="<c:url value="/resources/img/slide3.jpg" />" alt="Third slide">
          <!-- Static Header -->
          <div class="header-text hidden-xs">
            <div class="col-md-12 text-center">
              <h2><span>Use without any charge</span></h2>
              <br>
              <h3><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span></h3>
              <br>
              <div class="">
                <a class="btn btn-theme btn-sm btn-min-block" href="#about">About us</a><a class="btn btn-theme btn-sm btn-min-block" href="#works">Our works</a>
              </div>
            </div>
          </div>
          <!-- /header-text -->
        </div>
      </div>
      <!-- Controls -->
      <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
			</a>
      <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
			</a>
    </div>
    <!-- /carousel -->

  </section>
  <!--메인 캐러셀 페이지-->

  <!-- Section: 호텔리스트 -->
  <section id="sectionHotel" class="home-section color-dark bg-white">
    <div class="container marginbot-50">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
          <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
            <div class="section-heading text-center">
              <h2 class="h-bold">3천개가 넘는 대한민국의 숙박들을 비트캠프에서!</h2>
              <div class="divider-header"></div>
              <p>지금, 추억이 담길 공간을 예약하세요!</p>
            </div>
          </div>
        </div>
      </div>

    </div>

    <div class="container">
      <div class="row">
      	<div id="hotelList" class="row">
			<!-- list 출력장소 -->
		</div>			
		<div id="hotelListPage"><!-- 리스트 페이징처리 --></div>
      </div>
    </div>

  </section>
  <!-- /Section: 호텔리스트 -->

  <!-- 호텔 상세 페이지 MODAL -->
	<div id="hotelDetail" class="modal fade" tabindex="-1" role="dialog"aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title">Modal title</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	      	<img src="">
	        <table class="table">
			  <tbody>
			    <tr>
			      <th scope="row">주소</th>
			      <td id="hAddress">Mark</td>
			    </tr>
			    <tr>
			      <th scope="row">우편번호</th>
			      <td id="hZipcode">Larry</td>
			    </tr>
			    <tr>
			      <th scope="row">전화번호</th>
			      <td id="hTel">Jacob</td>
			    </tr>
			    <tr>
			      <th scope="row">담당자 이름</th>
			      <td id="hAdmin"></td>
			    </tr>
			    <tr>
			      <th scope="row">소개</th>
			      <td id="hIntro">mini</td>
			    </tr>
			  </tbody>
			</table>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-skin" data-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- 각 호텔 별 룸 리스트 MODAL -->
	<div id="roomListModal" class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-scrollable" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalScrollableTitle">Modal title</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <!-- 방 리스트 출력  -->
	      </div>
	      <div class="modal-footer">
	        <button id="roomListCloseBtn" type="button" class="btn btn-skin" data-dismiss="modal">닫기</button>
	      </div>
	    </div>
	  </div>
	</div>


  <!-- Section: 예약 페이지-->
 <section id="sectionReserv" class="home-section color-dark bg-white">
 <div class="container" id="container">
   	<h1 style="padding: 15px; border-bottom: 1px solid #CCCCCC;"> 예약 진행 </h1>
   	<form id="bForm">
   		<h5 id="h_img_s" style="display:none;"></h5>
   		<div id="h_info">
   			<h4>호텔 정보</h4>
   			<img name="h_photo" id="h_photo">
   			<div id="ho">
   			<h5><input name="h_name" id="h_name" readonly></h5>
   			<h6><input name="h_address" id="h_address" readonly></h6>
   			</div>
   		</div>
   		<!-- 방 리스트 출력  -->
   		<div id="date">
   			
 			<h4>체크인</h4>
 				<h5><input type="text" id="datepicker" name="s_date"></h5>
  			<h4>체크아웃</h4>
  				<h5><input type="text" id="datepicker2" name="e_date"></h5>
 		</div>
   		<div id="r_info">
   			<h4>룸 정보</h4>
   			<h5><input name="r_name" id="r_name" readonly></h5>
   			<h4>룸 가격</h4>
   			<h5><input name="r_price" id="r_price" readonly></h5>
   		</div>
   		<h6 id="chkMsg"></h6>
   		<div id="u_info">
   			<h5 style="color: black; font-size:30px;"><input name="uId" id="uId" style="background-color: #F5F4F1; width:150px;"readonly> 님이 선택하신 예약 정보 입니다.</h5>
   			<!-- <input name="b_date" id="b_date"> -->
   		</div>
   		
   		<div id="button">
   			<!-- <a id="kakaopay-btn" style="cursor: pointer; width: 120px; height: 51px; display: inline-block; float: left; background-image: url(/bitcamp/img/payment_medium.png);"></a> -->
			<button type="button" id="kakaopay-btn" style="cursor: pointer; width: 120px; height: 51px; display: inline-block; float: left; background-image: url(/bitcamp/img/payment_medium.png);"></button>
   			<button id="mumu" class="btn btn-lg btn-primary btn-block text-uppercase" type="button" style="width:150px; height: 50px; border-radius: 20px; margin: 0 10px;" >무통장 입금</button>
			<!-- <input type="submit" class="btn btn-outline-primary btn-lg" value="무통장입금"> -->
   			<button id="reset" class="btn btn-lg btn-primary btn-block text-uppercase" type="reset" style="width:150px; height: 50px; border-radius: 20px; margin-bottom: 5px; clear:both;">이전</button>
   			
   		</div>
   	</form>
   	
<!--    			<form method="post" id="kaka">
    			<button id="kakaopay-btn" type="submit">카카오페이로 결제하기</button>
			</form>
			 -->
   </div>
 </section> 
    
  <!-- /Section: 예약 페이지-->


  <!-- Section: 결제 페이지 -->
  <section id="sectionPayment" class="home-section color-dark text-center bg-white">
    <div class="container marginbot-50">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
          <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
            <div class="section-heading text-center">
              <h2 class="h-bold">결제 진행</h2>
              <div class="divider-header"></div>
              <p>Lorem ipsum dolor sit amet, agam perfecto sensibus usu at duo ut iriure.</p>
            </div>
          </div>
        </div>
      </div>

    </div>

    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-12 col-lg-12">
          <div class="wow bounceInUp" data-wow-delay="0.4s">
<!-- 			
			<h5 id="h_img_s2" style=""></h5>
			<h5 id="h_address2"></h5>
			<h5 id="s_date2"></h5>
			<h5 id="e_date2"></h5>
			<h5 id="uId2"></h5> -->
              <div id="mu">
              <table id="bookingChk">
              	<tr>
              		<td>호텔명 : </td>
              		<td><h4 id="h_name2" class="muin" style="color:#1CBCA3;"></h4></td>
              	</tr>
              	<tr>
              		<td>방이름 : </td>
              		<td><h4 id="r_name2" class="muin" style=color:#1CBCA3;"></h4></td>
              	</tr>
              	<tr>
              		<td>결제예정 금액 : </td>
              		<td><h4 id="r_price2" class="muin" style="color:#1CBCA3;"></h4></td>
              	</tr>
          		<tr>
              		<th colspan="2"><h4 class="ib"> 신한 111-1111-1111 비트캠프 </h4>
              		<h4 class="ib"> 24시간 이내에 입금 해주시기 바랍니다. <br>시간내에 입금 하지 않으면 자동으로 예약이 취소 됩니다. </h4>
              		</th>
              	</tr>
              	<tr>
              		<th colspan="2"><button id="mupay" class="btn btn-lg btn-primary btn-block text-uppercase" type="button" style="width:150px; border-radius: 10px;" > 입금 확인</button>
              		<button id="cancel" class="btn btn-lg btn-primary btn-block text-uppercase" type="button" style="width:150px; border-radius: 10px; background-color: white; color: black;" > 예약 취소</button>
              		</th>
              	</tr>
              	</table>
              </div>

          </div>
        </div>
      </div>
    </div>

  </section>
  <!-- /Section: 결제 페이지 -->

  <!-- Section: 예약 완료 페이지 -->
  <section id="sectionConfirm" class="home-section nopadd-bot color-dark bg-gray text-center">
    <div class="container marginbot-50">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
          <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
            <div class="section-heading text-center">
              <h2 class="h-bold">예약 완료</h2>
              <div class="divider-header"></div>
              <p>Lorem ipsum dolor sit amet, agam perfecto sensibus usu at duo ut iriure.</p>
            </div>
          </div>
        </div>
      </div>

    </div>

    <div class="container">
     <div class="row marginbot-80">
        <div class="col-md-8 col-md-offset-2">
          <div id="sendmessage">Your message has been sent. Thank you!</div>
          <div id="errormessage"></div>
          <form action="" method="post" role="form" class="contactForm">
            <div class="form-group">
              <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
              <div class="validation"></div>
            </div>
            <div class="text-center"><button type="submit" class="btn btn-skin btn-lg btn-block">Send Message</button></div>
          </form>
        </div>
      </div>
    </div>
  </section>
  <!-- /Section: 예약 완료 페이지  -->

  <!-- Footer 시작 -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">

          <div class="text-center">
            <a href="#sectionHotel" class="totop"><i class="fa fa-angle-up fa-3x"></i></a>
            <p>&copy; Bitcamp - Where Change Begins </p>
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
  <!-- footer END -->


  <!-- Core JavaScript Files -->
  <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
  <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
  <script src="<c:url value="/resources/js/jquery.sticky.js" />"></script>
  <script src="<c:url value="/resources/js/jquery.flexslider-min.js" />"></script>
  <script src="<c:url value="/resources/js/jquery.easing.min.js" />"></script>
  <script src="<c:url value="/resources/js/jquery.scrollTo.js" />"></script>
  <script src="<c:url value="/resources/js/jquery.appear.js" />"></script>
  <script src="<c:url value="/resources/js/stellar.js" />"></script>
  <script src="<c:url value="/resources/js/wow.min.js" />"></script>
  <script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
  <script src="<c:url value="/resources/js/nivo-lightbox.min.js" />"></script>
  <script src="<c:url value="/resources/js/custom.js" />"></script>
  <script src="<c:url value="/resources/contactform/contactform.js" />"></script>
	
</body>
</html>
