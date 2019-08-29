<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <!--  kakao api -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

  <title>숙소 예약 페이지</title>

  <!-- css -->
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

<style>
	#container {
		width: 1000px;
		height: 800px;
		border: 10px solid #c7ecee;
		border-radius: 10px;
		background-color: #F5F4F1;
	}

	#h_info {
		width: 350px;
		height: 400px;
		padding-top: 20px;
		float: left;
	}
	

	
	
	#h_photo {
		margin-left: 30px;
		margin-bottom: 20px;
	}
	
	
	#h_address {
		width: 350px;
		background-color: #F5F4F1;
		font-size: 18px;
	}
	
	#date {
		width: 300px;
		padding-top: 20px;
		float: left;
		
	}
	
	#r_info {
		width: 300px;
		padding-top: 20px;
		float: left;
	}
	
	#u_info {
		clear: both;
		padding-top: 100px;
	}
	
	h4,h5 {
		text-align: center;
	}
	
	h5 {
		color: #468F01;
	}
	
	#button {
		margin-top: 70px;
		width: 700px;
		margin-left: 180px;
		
	}

	input {
		border: 0px;
		text-align: center;
		border-radius: 10px;
		height: 50px;
	}
	
	#submit {
		font-size: 24px;
		width: 300px;
		float: left;
		border-radius: 10px 0 0 10px ;
		margin-top: 5px;
	}
	
	#reset {
		font-size: 24px;
		text-decoration: none;
		width: 300px;
		background-color: white;
		border: 1px solid #ddd;
		border-radius: 0 10px 10px 0;
		color: black;
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
	
    <!-- Section -->
	<%@ include file="/WEB-INF/views/frame/section.jsp" %>
    <!-- End of Section -->

    <!-- Nav -->
	<%@ include file="/WEB-INF/views/frame/nav.jsp" %>
    <!-- End of Nav -->
	
	  <section id="about" class="home-section color-dark bg-white">
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
	    		
	    		<div id="u_info">
	    			<h5 style="color: black; font-size:30px;"><input name="uId" id="uId" value="kytsaaa" style="background-color: #F5F4F1;"readonly> 님이 선택하신 예약 정보 입니다.</h5>
	    			<!-- <input name="b_date" id="b_date"> -->
	    		</div>
	    		
	    		<div id="button">
	    			<button id="submit" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">예약 하기</button>
	    			<button id="reset" class="btn btn-lg btn-primary btn-block text-uppercase" type="reset">목록으로 이동</button>
	    		</div>
	    	</form>
	    
	    </div>
	  </section>
	
	
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
    	
   		call();
    	
    });
    
    
    function call()
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
        
        var totalP = parseInt(diff/currDay) * 2000;
        $('#r_price').val(totalP);
        
/*         
        document.write("* 날짜 두개 : " + sdd + ", " + edd + "<br/>");
        document.write("* 일수 차이 : " + parseInt(diff/currDay) + " 일<br/>");
        document.write("* 월수 차이 : " + parseInt(diff/currMonth) + " 월<br/>");
        document.write("* 년수 차이 : " + parseInt(diff/currYear) + " 년<br/><br/>"); */
     
    }
        
    
});
</script>


  <!-- Core JavaScript Files -->
  <%-- <script src="<c:url value="/resources/js/jquery.min.js" />"></script> --%>
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