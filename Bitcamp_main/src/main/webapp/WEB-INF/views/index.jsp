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
<%-- <link href="${pageContext.request.contextPath}/static/css/booking.css" rel="stylesheet" type="text/css" > --%>

<!-- Hotel CSS -->
<link href="${pageContext.request.contextPath}/static/css/hotel.css" rel="stylesheet" >

 <!-- datepicker -->
<!-- <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 -->
 <!--  kakao api -->
<!-- <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> -->



<style>

	
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
          <img src="img/slide1.jpg" alt="First slide">
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
          <img src="img/slide2.jpg" alt="Second slide">
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
          <img src="img/slide3.jpg" alt="Third slide">
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
  <section id="sectionReserv" class="home-section color-dark bg-gray">
    <div class="container marginbot-50">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
          <div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
            <div class="section-heading text-center">
              <h2 class="h-bold">예약진행</h2>
              <div class="divider-header"></div>
              <p>Lorem ipsum dolor sit amet, agam perfecto sensibus usu at duo ut iriure.</p>
            </div>
          </div>
        </div>
      </div>

    </div>

    <div class="text-center">
      <div class="container">

        <div class="row">
          <div class="col-md-3">
            <div class="wow fadeInLeft" data-wow-delay="0.2s">
              <div class="service-box">
                <div class="service-icon">
                  <span class="fa fa-cogs fa-5x"></span>
                </div>
                <div class="service-desc">
                  <h5>Web Design</h5>
                  <p>
                    Ad denique euripidis signiferumque vim, iusto admodum quo cu. No tritani neglegentur mediocritatem duo.
                  </p>
                  <a href="#" class="btn btn-skin">Learn more</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="wow fadeInUp" data-wow-delay="0.2s">
              <div class="service-box">
                <div class="service-icon">
                  <span class="fa fa-camera fa-5x"></span>
                </div>
                <div class="service-desc">
                  <h5>Photography</h5>
                  <p>
                    Ad denique euripidis signiferumque vim, iusto admodum quo cu. No tritani neglegentur mediocritatem duo.
                  </p>
                  <a href="#" class="btn btn-skin">Learn more</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="wow fadeInUp" data-wow-delay="0.2s">
              <div class="service-box">
                <div class="service-icon">
                  <span class="fa fa-laptop fa-5x"></span>
                </div>
                <div class="service-desc">
                  <h5>Graphic design</h5>
                  <p>
                    Ad denique euripidis signiferumque vim, iusto admodum quo cu. No tritani neglegentur mediocritatem duo.
                  </p>
                  <a href="#" class="btn btn-skin">Learn more</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="wow fadeInRight" data-wow-delay="0.2s">
              <div class="service-box">
                <div class="service-icon">
                  <span class="fa fa-mobile-phone fa-5x"></span>
                </div>
                <div class="service-desc">
                  <h5>Mobile apps</h5>
                  <p>
                    Ad denique euripidis signiferumque vim, iusto admodum quo cu. No tritani neglegentur mediocritatem duo.
                  </p>
                  <a href="#" class="btn btn-skin">Learn more</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
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
              <h2 class="h-bold">결제</h2>
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
            <div id="owl-works" class="owl-carousel">
              <div class="item"><a href="img/works/1.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/1@2x.jpg"><img src="img/works/1.jpg" class="img-responsive" alt="img"></a></div>
              <div class="item"><a href="img/works/2.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/2@2x.jpg"><img src="img/works/2.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="img/works/3.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/3@2x.jpg"><img src="img/works/3.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="img/works/4.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/4@2x.jpg"><img src="img/works/4.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="img/works/5.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/5@2x.jpg"><img src="img/works/5.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="img/works/6.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/6@2x.jpg"><img src="img/works/6.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="img/works/7.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/7@2x.jpg"><img src="img/works/7.jpg" class="img-responsive " alt="img"></a></div>
              <div class="item"><a href="img/works/8.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/8@2x.jpg"><img src="img/works/8.jpg" class="img-responsive " alt="img"></a></div>
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
	
	
	<!-- 용민 : 룸 예약 페이지  -->
<%-- 	
 	  <section id="sectionReserv" class="home-section color-dark bg-white">
	  		    <div class="container" id="container">
	    <!-- <a id="kakaopay-btn" style="cursor: pointer; width: 120px; height: 51px; display: inline-block; margin-bottom: -20px; margin-right: 30px; background-image: url(/kym/img/payment_medium.png);"></a> -->
	    	<h1 style="padding: 15px; border-bottom: 1px solid #CCCCCC;"> 예약 상세 내용 </h1>
	    	<form method="post" id="bForm">
	    		<div id="h_info">
	    			<h4>호텔 정보</h4>
	    			<img src="<c:url value="/resources/img/hotel.jpg" />" name="h_photo" id="h_photo">
	    			<div id="ho">
	    			<h5><input name="h_name" id="h_name" value="제주 신라 호텔" readonly></h5>
	    			<h6><input name="h_address" id="h_address" value="중문관광로72번길 75, 서귀포, 대한민국" readonly></h6>
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
	    			<h5><input name="r_name" id="r_name" value="디럭스 룸" readonly></h5>
	    			<h4>룸 가격</h4>
	    			<h5><input name="r_price" id="r_price" readonly></h5>
	    		</div>
	    		<h6 id="chkMsg"></h6>
	    		<div id="u_info">
	    			<h5 style="color: black; font-size:30px;"><input name="uId" id="uId" value="kytsaaa" style="background-color: #F5F4F1;"readonly> 님이 선택하신 예약 정보 입니다.</h5>
	    			<!-- <input name="b_date" id="b_date"> -->
	    		</div>
	    		
	    		<div id="button">
	    			<button id="submit" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" style="width:150px; border-radius: 10px;" >무통장 입금</button>
	    			<a id="kakaopay-btn" style="cursor: pointer; width: 120px; height: 51px; display: inline-block; float: left; background-image: url(/bitcamp/img/payment_medium.png);"></a>
					<!-- <input type="submit" class="btn btn-outline-primary btn-lg" value="무통장입금"> -->
	    			<button id="reset" class="btn btn-lg btn-primary btn-block text-uppercase" type="reset" style="width:150px; border-radius: 10px;">이전</button>
	    			
	    		</div>
	    	</form>
	    
	    </div>
	  </section> --%>
	
	
	<!-- footer -->
	<%@ include file="/WEB-INF/views/frame/footer.jsp" %>
    <!-- End of footer -->


<script>

$(document).ready(function() {
	
    $(function() {
        //모든 datepicker에 대한 공통 옵션 설정
        $.datepicker.setDefaults({
            dateFormat: 'yy-mm-dd' //Input Display Format 변경
            ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
            ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
            ,changeYear: true //콤보박스에서 년 선택 가능
            ,changeMonth: true //콤보박스에서 월 선택 가능                
            ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
            ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
            ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
            ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
            ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
            ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
            ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
            ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
            ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
            ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
            ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                    
        });

        //input을 datepicker로 선언
        $("#datepicker").datepicker();                    
        $("#datepicker2").datepicker();
        
        //From의 초기값을 오늘 날짜로 설정
        $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
        //To의 초기값을 내일로 설정
        $('#datepicker2').datepicker('setDate', '+1D'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
    });
    
    
    
    
    $('#datepicker2').change(function() {
    	
   		r_price();
   		available();
    });
    
    
    function r_price()
    {
        var sdd = document.getElementById("datepicker").value;
        var edd = document.getElementById("datepicker2").value;
        var ar1 = sdd.split('-');
        var ar2 = edd.split('-');
        var dat1 = new Date(ar1[0], ar1[1], ar1[2]);
        var dat2 = new Date(ar2[0], ar2[1], ar2[2]);
        
  		// 날짜 차이 알아 내기
        var diff = dat2 - dat1;
        var currDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
        var currMonth = currDay * 30;// 월 만듬
        var currYear = currMonth * 12; // 년 만듬

        var ddif = parseInt(diff/currDay);
        var mdif = parseInt(diff/currMonth);
        var ydif = parseInt(diff/currYear);
        
        var totalP = parseInt(diff/currDay) * $('#r_price').val();
        $('#r_price').val(totalP);
        
/*         
        document.write("* 날짜 두개 : " + sdd + ", " + edd + "<br/>");
        document.write("* 일수 차이 : " + parseInt(diff/currDay) + " 일<br/>");
        document.write("* 월수 차이 : " + parseInt(diff/currMonth) + " 월<br/>");
        document.write("* 년수 차이 : " + parseInt(diff/currYear) + " 년<br/><br/>"); */
     
    }
        
    function available()
    {
    	$('#chkMsg').empty();
    	
        $.ajax({
            url : 'http://localhost:8080/booking/rest/booking/aval',
            type : 'get',
            data : {
                h_name : $('#h_name').val(),
                r_name : $('#r_name').val(),
                s_date : $('#datepicker').val(),
                e_date : $('#datepicker2').val()
            },
            success : function(data){
                alert(data);
                if(data=='success') {
                	$('#chkMsg').append('지정 하신 날짜에는 모든 방이 소진되었습니다. 다른 날짜를 선택해주세요.').css('color', 'red');
                }
                else {
                	$('#chkMsg').append('예약 가능한 날짜입니다.').css('color', 'blue');
                }
            },
    		error : function(e) {
    			alert(e);
    		}
        });
    }
    
    
    $('#kakaopay-btn').on(function() {
    	
    	kakaopay(e);
    	
    });
    
/*     
   	function kakaopay(e) {
   		e.preventDefault();
   		
   		$.ajax({ */
   			/* url: 'http://15.164.100.85:8080/booking/rest/kakaoPay', */
/*    			url: 'http://localhost:8080/booking/rest/kakaoPay',
   			type : 'GET',
   			data : {
   				hotel: $('').val;
   				checkIn: $()
   				
   			}
   			
   			
   			
   		});
   	}  */
});
</script>





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
