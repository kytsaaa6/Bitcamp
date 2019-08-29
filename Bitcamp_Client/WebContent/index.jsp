<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>bitCAMP</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="css/nivo-lightbox.css" rel="stylesheet" />
<link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
<link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
<link href="css/owl.theme.css" rel="stylesheet" media="screen" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/animate.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet">
<link href="color/default.css" rel="stylesheet">
<link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css" />
<style>
#reviewList {
	margin: 40px;
	text-align: left;
}
#lBtn {
	width: 40%;
	margin: 20px;
}
</style>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">


  <section id="intro" class="home-slide text-light">

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
          <img src="img/slide1.jpeg" alt="First slide">
          <!-- Static Header -->
          <div class="header-text hidden-xs">
            <div class="col-md-12 text-center">
              <h2><span>bitCAMP</span></h2>
              <br>
              <h3><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit</span></h3>
              <br>
              <div class="">
                <a class="btn btn-theme btn-sm btn-min-block" href="#review">REVIEW</a><a class="btn btn-theme btn-sm btn-min-block" href="#reviewList">review List</a></div>
            </div>
          </div>
          <!-- /header-text -->
        </div>
        <div class="item">
          <img src="img/slide2.jpeg" alt="Second slide">
          <!-- Static Header -->
          <div class="header-text hidden-xs">
            <div class="col-md-12 text-center">
              <h2><span>bitCAMP</span></h2>
              <br>
              <h3><span>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua</span></h3>
              <br>
              <div class="">
                <a class="btn btn-theme btn-sm btn-min-block" href="#review">REVIEW</a><a class="btn btn-theme btn-sm btn-min-block" href="#reviewList">review List</a></div>
            </div>
          </div>
          <!-- /header-text -->
        </div>
        <div class="item">
          <img src="img/slide3.jpeg" alt="Third slide">
          <!-- Static Header -->
          <div class="header-text hidden-xs">
            <div class="col-md-12 text-center">
              <h2><span>bitCAMP</span></h2>
              <br>
              <h3><span>Ut enim ad minim veniam</span></h3>
              <br>
              <div class="">
                <a class="btn btn-theme btn-sm btn-min-block" href="#review">REVIEW</a><a class="btn btn-theme btn-sm btn-min-block" href="#reviewList">review List</a>
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
  <!-- /Section: intro -->



  <!-- Navigation -->
  <div id="navigation">
    <nav class="navbar navbar-custom" role="navigation">
      <div class="container">
        <div class="row">
          <div class="col-md-2">
            <div class="site-logo">
              <a href="#" class="brand">bitCAMP</a>
            </div>
          </div>


          <div class="col-md-10">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu"><i class="fa fa-bars"></i></button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="menu">
              <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#intro">Home</a></li>
                <li><a href="#join">JOIN</a></li>
                <li><a href="#booking">BOOKING</a></li> <!-- 호텔 리스트 -->
                <li><a href="#review">REVIEW</a></li>
                <li><a href="#reviewList">REVIEW LIST</a></li>
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
  
  
<!-- ---------------------------------------------------시작----------------------------------------------------- -->

	<section id="review" class="home-section nopadd-bot color-dark bg-gray text-center">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow flipInY" data-wow-offset="0" data-wow-delay="0.4s">
						<div class="section-heading text-center">
							<h2 class="h-bold">REVIEW</h2>
							<div class="divider-header"></div>
							<p>share your expirence!</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="col-md-8 col-md-offset-2">
				<div id="writeReviewBtn">
					<input type="submit" id="wrb" value="write review" onclick="wrb();" class="btn btn-skin btn-lg btn-block">
				</div>
			</div>
		</div>
	
		<div class="container">
			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
					<div id="wBox" style="display: none">
						<form id="wForm" onsubmit="return false;" method="post" class="contactForm">
							<input name="idx_c" id="idx_c" value="" class="form-control" readonly><br><!-- ID받아와서 바꿔야함 --> 
							<select name="idx_h" id="idx_h" class="form-control"></select>
							<!-- <input type="text" name="idx_h" id="idx_h" placeholder="IDX_h" class="form-control"><br> -->
							rating <input type="text" name="rate" id="rate" class="rating rating-loading" data-size="xs"><br> 
							<textarea class="form-control" name="content" id="content" rows="5" placeholder="share your expirence" required></textarea>
							<br> <input type="submit" value="WRITE" onclick="wForm();" class="btn btn-skin btn-lg btn-block">
						</form>
					</div>
				</div>
			</div>
		</div>


		<div class="container">
			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
					<div id="eBox" style="display: none">
						<form id="eForm" onsubmit="return false;" method="post" class="contactForm">
							<input type="hidden" name="idx" id="idx"> 
							IDX_c <input type="text" name="idx_c" id="eIdx_c" class="form-control" readonly><br> 
							IDX_h <input type="text" name="idx_h" id="eIdx_h" class="form-control" required><br>
							rating <input type="text" name="rate" id="eRate" class="rating rating-loading" data-size="xs"><br> 
							content <textarea class="form-control" name="content" id="eContent" rows="5" required></textarea><br> 
							<input type="submit" value="EDIT" onclick="eForm();" class="btn btn-skin btn-lg btn-block">
						</form>
					</div>
				</div>
			</div>
		</div>

	<div class="container">
		<div class="row marginbot-80">
			<div class="col-md-8 col-md-offset-2">
			<a href="javascript:shareStory()"><img src="https://developers.kakao.com/sdk/js/resources/story/icon_small.png"/></a>
				<div id="reviewList"></div>
			</div>
		</div>
	</div>
</section>


	<!-- ---------------------------------------------------끝----------------------------------------------------- -->



	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="text-center">
						<a href="#intro" class="totop"><i class="fa fa-angle-up fa-3x"></i></a>
						<p>&copy; Shuffle Theme - All Rights Reserved</p>
						<div class="credits">
							Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<script>
		$(document).ready(function() {
			list();
		});

		function list() {
			$.ajax({
				//url : 'http://localhost:8080/review/rest-review',
				url: 'http://52.78.80.232:8080/review/rest-review',
				type : 'GET',
				success : function(data) {

					var html = '';
					for (var i = 0; i < data.length; i++) {
						html += '<div>\n';
						html += '글번호. no.로 표시할 예정 ::: ' + data[i].idx + '<br>\n';
						html += '회원idx를 아이디로 받아오기 마지막줄에? ::: ' + data[i].idx_c + '<br>\n';
						html += '날짜(오른쪽 정렬하기) ::: ' + data[i].date + '<br>\n';
						html += '예약번호 idx_h를 호텔 이름으로 받아오기(예약날짜 룸타입까지 받아서 회원 idx로 조회 예약내역이 주루룩 출력되게? 셀렉트 옵션으로 할지? ) ::: ' + data[i].idx_h + '<br>\n';
						html += '내용인데 타이틀 없애고 내용만 출력하기 ::: ' + data[i].content + '<br>\n';
						html += 'rating한건데 별 그림으로 출력되어야 해 ::: '+ data[i].rate +'<br>\n';
						html += '<button onclick="edt(' + data[i].idx + ')" class="btn btn-skin btn-lg" id="lBtn">EDIT</button>';
						html += '<button onclick="del(' + data[i].idx + ')" class="btn btn-skin btn-lg" id="lBtn">DELETE</button><br>\n';
						html += '<div>'
					}
					$('#reviewList').html(html);
				}
			});
		}

		function del(idx) {
			if (confirm('삭제하시겠습니까?')) {
				$.ajax({
					//url : 'http://localhost:8080/review/rest-review/'+ idx,
					url: 'http://52.78.80.232:8080/review/rest-review/' + idx,
					type : 'DELETE',
					success : function(data) {
						if (data == 'success') {
							alert('삭제되었습니다');
							list();
						}
					}
				});

			}
		}

		function edt(idx) {

			$('#wBox').css('display', 'none');
			$('#eBox').css('display', 'block');

			$.ajax({
				//url : 'http://localhost:8080/review/rest-review/'+ idx,
				url: 'http://52.78.80.232:8080/review/rest-review/' + idx,
				type : 'GET',
				success : function(data) {

					$('#idx').val(idx);
					$('#eIdx_c').val(data.idx_c);
					$('#eIdx_h').val(data.idx_h);
					$('#eRate').val(data.rate);
					$('#eContent').val(data.content);
				}
			});
		}

		function wrb(idx){
			var idx = 13;
			//var idx = ${param.uId};
			
			$('#wBox').css('display', 'block');
			$('#wrb').css('display', 'none');
/* 			

세션에서  user idx	받아오면 폼에 넣어서 disabled 하고
용민님 json받아서 idx로 고객 예약 내역을 select - option으로 보이게 해야 함 

			$.ajax({
				url : 'http://15.164.100.85:8080/booking/rest/booking/'+idx,
				type: 'GET',
				success : function(data) {
					
					var html = '';
					for (var h = 0; h < data.length; h++){
						html += '<option value="' + data[h].h_name +', '+ data[h].s_date +'-'+ data[h].e_date +'">';
					}
					$('#idx_h').html(html);
				}
			}); */
			
		}

		function eForm() {

			var idx = $('#idx').val();

			$.ajax({
				//url : 'http://localhost:8080/review/rest-review/'+ idx,
				url: 'http://52.78.80.232:8080/review/rest-review/'+ idx,
				type : 'PUT',
				data : JSON.stringify({
					idx : idx,
					idx_c : $('#eIdx_c').val(),
					idx_h : $('#eIdx_h').val(),
					rate : $('#eRate').val(),
					content : $('#eContent').val()
				}),
				contentType : 'application/json; charset=utf-8',
				success : function(data) {
					alert('수정되었습니다.');
					$('#eBox').css('display', 'none');
					$('#wBox').css('display', 'none');
					list();

				},
				error : function(e) {
					alert('error');
				}
			});

			return false;
		}

		function wForm() {

			$.ajax({
				//url : 'http://localhost:8080/review/rest-review',
				url: 'http://52.78.80.232:8080/review/rest-review',
				type : 'POST',
				data : $('#wForm').serialize(),
				success : function(data) {
					$('#wForm')[0].reset();
					alert(data);
					list();
					
				}

			});
			
		}

		

	</script>
	<script type='text/javascript'>
	Kakao.init('4713c1766943d46dfc46037c003075bb');
    function shareStory() {
      Kakao.Story.share({
        url: 'http://13.209.40.5:8080/client',
        text: '비트캠프에 놀러오세요!'
      });
    }
	</script>
	
	
	<!-- Core JavaScript Files -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.flexslider-min.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/jquery.appear.js"></script>
	<script src="js/stellar.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/nivo-lightbox.min.js"></script>
	<script src="js/custom.js"></script>
	<script src="contactform/contactform.js"></script>
	<script src="js/star-rating.js" type="text/javascript"></script>
	<script src="http://developers.kakao.com/sdk/js/kakao.min.js"></script>
	
	
</body>
</html>